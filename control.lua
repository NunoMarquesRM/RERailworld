require("prototypes.eletricTrain.lib")

local anzLoc = 0
local anzControl = 0

function CheckStations(command)
    game.print("Beginning check for redundant control stations", { skip = defines.print_skip.never })
    for _, surface in pairs(game.surfaces) do
        if surface ~= nil then
            stations = surface.find_entities_filtered { name = "et-control-station-1" }
            if #stations > 1 then
                game.print((#stations - 1) .. " redundant stations found on: " .. surface.name, { skip = defines.print_skip.never })
            end
        end
    end
    game.print("Check for redundant control stations complete", { skip = defines.print_skip.never })
end

function FindStations(command)
    planet = command.parameter
    game.print("Printing locations of all control stations on " .. planet, { skip = defines.print_skip.never })
    for _, surface in pairs(game.surfaces) do
        if surface ~= nil then
            if surface.name == planet then
                stations = surface.find_entities_filtered { name = "et-control-station-1" }
                for _, station in pairs(stations) do
                    game.print(station.gps_tag, { skip = defines.print_skip.never })
                end
            end
        end
    end
    game.print("Printing locations complete", { skip = defines.print_skip.never })
end

commands.add_command("et_check-r1", "Check for duplicate control stations on each planet", function(command)
    CheckStations(command)
end)

commands.add_command("et_find-r1", "Usage: /et_find-r1 planet_name      Finds and prints locations of all control stations on the specified planet", function(command)
    FindStations(command)
end)


function Init()
	storage = {}
	storage.LocList = {}
	storage.ControlList = {}
end

function Load()
	-- CallRemoteInterface()

	anzLoc = table.count(storage.LocList)
	anzControl = table.count(storage.ControlList)
end

function Reinitialize()
	storage = storage or {}
	storage.LocList = storage.LocList or {}
	storage.ControlList = storage.ControlList or {}

	Load()
end

function OnInit()
	Init()
	Load()
end
script.on_init(OnInit)

function OnLoad()
	Load()
end
script.on_load(OnLoad)

function OnConfigurationChanged(data)
	local modName = "RERailworld"
	-- if not IsModChanged(data,modName) then
		-- Load()
	-- else
		-- oldVersion = GetOldVersion(data,modName)
		-- newVersion = GetNewVersion(data,modName)

		-- if oldVersion == newVersion then
			-- Reinitialize()
		-- else
			Init()

			for _,surface in pairs(game.surfaces) do
				local trains = surface.find_entities_filtered{type="locomotive"}
				for _,train in pairs(trains) do
					if train.name:match("^et%-electric%-locomotive%-%d$") or train.name:match("^et%-electric%-locomotive%-%d%-mu$") then
						table.insert(storage.LocList,{entity=train,provider=nil})
						train.burner.currently_burning = prototypes.item['et-electric-locomotive-fuel']
					end
				end
			end

			anzLoc = table.count(storage.LocList)

			for _,surface in pairs(game.surfaces) do
				local controls = surface.find_entities_filtered{type="electric-energy-interface"}
				for _,control in pairs(controls) do
					if control.name:match("^et%-control%-station%-%d$") then
						table.insert(storage.ControlList,control)
					end
					if control.name:match("^et%-electric%-locomotive%-%d%-power$") or control.name:match("^et%-electric%-locomotive%-%d%-mu-power$") then
						control.destroy()
					end
				end
			end

			anzControl = table.count(storage.ControlList)
		-- end
	-- end
end
script.on_configuration_changed(OnConfigurationChanged)

function OnBuiltEntity(event)
	local entity = event.entity
	if entity and entity.valid then
		if entity.name:match("^et%-control%-station%-%d$") then
			table.insert(storage.ControlList,entity)
			anzControl = anzControl + 1
		elseif entity.type == "locomotive" then
			if entity.name:match("^et%-electric%-locomotive%-%d$") or entity.name:match("^et%-electric%-locomotive%-%d%-mu$") then
			table.insert(storage.LocList,{entity=entity,provider=nil})
			entity.burner.currently_burning = prototypes.item['et-electric-locomotive-fuel']
			anzLoc = anzLoc + 1
			end
		end
	end
end
script.on_event({defines.events.on_built_entity,defines.events.on_robot_built_entity,defines.events.script_raised_built},OnBuiltEntity)

function OnRemoveEntity(event)
	local entity = event.entity
	if entity and entity.valid then
		if entity.name:match("^et%-control%-station%-%d$") then
			for i,control in pairs(storage.ControlList) do
				if control == entity then
					for _,loc in pairs(storage.LocList) do
						if loc.provider and loc.provider.valid then
							loc.provider.destroy()
						end
						loc.provider = nil
					end
					table.remove(storage.ControlList,i)
					anzControl = anzControl - 1
					break
				end
			end
		elseif entity.type == "locomotive" then
			if entity.name:match("^et%-electric%-locomotive%-%d$") or entity.name:match("^et%-electric%-locomotive%-%d%-mu$") then
				for i,loc in pairs(storage.LocList) do
					if loc.entity == entity then
						if loc.provider and loc.provider.valid then
							loc.provider.destroy()
						end
						table.remove(storage.LocList,i)
						anzLoc = anzLoc - 1
						break
					end
				end
			end
		end
	end
end
script.on_event({defines.events.on_pre_player_mined_item,defines.events.on_robot_pre_mined,defines.events.on_entity_died,defines.events.script_raised_destroy},OnRemoveEntity)

function CreateProvider(loc)
	local control = storage.ControlList[1]
	local pos = control.position
	local surface = control.surface
	local force = control.force
	local entity = surface.create_entity{name=loc.entity.name.."-power",position=pos,force=force}
	loc.provider = entity
end

function RemoveLoc(i)
	if storage.LocList[i] then
		if storage.LocList[i].entity and storage.LocList[i].entity.valid then
			storage.LocList[i].entity.destroy()
		end
		if storage.LocList[i].provider and storage.LocList[i].provider.valid then
			storage.LocList[i].provider.destroy()
		end
	end
	table.remove(storage.LocList,i)
end
-- Old version
--function OnTick()
--	if anzLoc > 0 and anzControl > 0 then
--		for i,loc in pairs(storage.LocList) do
--			if loc and loc.entity and loc.entity.valid then
--				if not (loc.provider and loc.provider.valid) then
--					CreateProvider(loc)
--				else
--					if  loc.entity.burner.currently_burning == nil or loc.entity.burner.currently_burning ~= prototypes.item['et-electric-locomotive-fuel'] then
--						loc.entity.burner.currently_burning = prototypes.item['et-electric-locomotive-fuel']
--					end
--					needPower = loc.entity.burner.currently_burning.name.fuel_value - loc.entity.burner.remaining_burning_fuel
--
--					restPower = loc.provider.energy - needPower
--					if restPower > 0 then
--						loc.entity.burner.remaining_burning_fuel = loc.entity.burner.currently_burning.name.fuel_value
--						loc.provider.energy = loc.provider.energy - needPower
--					else
--						loc.entity.burner.remaining_burning_fuel = loc.entity.burner.remaining_burning_fuel + loc.provider.energy
--						loc.provider.energy = 0
--					end
--				end
--			else
--				RemoveLoc(i)
--			end
--		end
--	end
--end
function OnTick()
    if anzLoc <= 0 or anzControl <= 0 then
        return
    end

    local control = storage.ControlList[1]

    if not control or not control.valid then
        return
    end

    for i, loc in pairs(storage.LocList) do
        if not loc.entity or not loc.entity.valid then
            RemoveLoc(i)
        else
            local fuel = prototypes.item["et-electric-locomotive-fuel"]

            if loc.entity.burner.currently_burning ~= fuel then
                loc.entity.burner.currently_burning = fuel
            end

            local remaining =
                loc.entity.burner.remaining_burning_fuel or 0

            local needed = math.max(
                0,
                fuel.fuel_value - remaining
            )

            local available = control.energy
            local transferred = math.min(needed, available)

            if transferred > 0 then
                loc.entity.burner.remaining_burning_fuel =
                    remaining + transferred

                control.energy = available - transferred
            end
        end
    end
end

--script.on_event(defines.events.on_tick,OnTick)
script.on_nth_tick(1,OnTick)
require("prototypes.eletricTrain.lib")

local function _Init()
	global.TrainList = global.TrainList or {}
	global.ProviderList = global.ProviderList or {}
	global.Fuel = global.Fuel or game.item_prototypes['eletric-fuel']
end

function OnInit()
	_Init()
end

function OnConfigurationChanged(data)
	_Init()

	local mod_name = "RERailworld"
	if IsModChanged(data,mod_name) then
		global = {}
		global.TrainList = {}
		global.ProviderList = {} 
		global.Fuel = game.item_prototypes['eletric-fuel']
		
		for _,surface in pairs(game.surfaces) do
			local trains = surface.find_entities_filtered{type="locomotive"}
			for _,train in pairs(trains) do
				if train.name:find("locomotive-eletric-r",1,true) then
					table.insert(global.TrainList,{entity = train, last_fuel = {}})
					train.burner.currently_burning = global.Fuel
					train.burner.remaining_burning_fuel = global.Fuel.fuel_value
				end
			end	
			local providers = surface.find_entities_filtered{type="electric-energy-interface"}
			for _,provider in pairs(providers) do
				if provider.name == "eletric-provider" then
					table.insert(global.ProviderList,provider)
				end
			end	
		end
	end
end
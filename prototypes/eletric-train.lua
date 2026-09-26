--ELECTRIC TRAIN R1
local elocr1_item = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
elocr1_item.name = "et-electric-locomotive-1"
elocr1_item.icon = "__RERailworld__/graphics/icons/eletric-train/eletric-r1.png"
elocr1_item.icon_size = 32
elocr1_item.subgroup = "re-eletricTrain"
elocr1_item.order = "b-a"
elocr1_item.place_result = "et-electric-locomotive-1"
elocr1_item.stack_size = 4

local elocr1_recipe = table.deepcopy(data.raw['recipe']['locomotive'])
elocr1_recipe.name = "et-electric-locomotive-1"
elocr1_recipe.energy_required = 2
elocr1_recipe.ingredients = {
	{type = "item", name = "electric-engine-unit", amount = 20},
	{type = "item", name = "locomotive", amount = 2},
	{type = "item", name = "battery", amount = 20}
}
elocr1_recipe.results = {{type="item", name="et-electric-locomotive-1", amount=1}}
elocr1_recipe.categories = {"red-workshop-locomotive"}

local elocr1 = table.deepcopy(data.raw['locomotive']['locomotive'])
elocr1.name = "et-electric-locomotive-1"
elocr1.minable.results = {{type="item", name="et-electric-locomotive-1", amount=1}}
elocr1.max_health = 1500
elocr1.max_speed = 2.4		--216*2.4 = 518.4
elocr1.max_power = "5000kW"
elocr1.reversing_power_modifier = 1
elocr1.braking_force = 20
elocr1.friction_force = 0.25
elocr1.air_resistance = 0.00375
elocr1.energy_source.fuel_inventory_size = 0
elocr1.energy_source.fuel_categories = {"et-electric-fuel"}
elocr1.collision_box = {{-0.6, -2.6}, {0.6, 2.6}}
elocr1.selection_box = {{-1, -3}, {1, 3}}
elocr1.drawing_box = {{-1, -4}, {1, 3}}
elocr1.connection_distance = 3
elocr1.joint_distance = 4
elocr1.pictures.rotated.layers = {{
	priority = "very-low",
	width = 512, height = 512, scale = 0.5,
	direction_count = 128,
	filenames = {
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-0.png",
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-1.png",
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-2.png",
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-3.png",
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-4.png",
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-5.png",
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-6.png",
		"__RERailworld__/graphics/entity/eletric-train/r1/eletric_r1_sheet-7.png",
	},
	line_length = 4,
	lines_per_file = 4,
	shift = {0, -0.625}
}}

data:extend({elocr1_item,elocr1_recipe,elocr1})

--ELECTRIC TRAIN R2
local elocr2_item = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
elocr2_item.name = "et-electric-locomotive-2"
elocr2_item.icon = "__RERailworld__/graphics/icons/eletric-train/eletric-r2.png"
elocr2_item.icon_size = 32
elocr2_item.subgroup = "re-eletricTrain"
elocr2_item.order = "b-b"
elocr2_item.place_result = "et-electric-locomotive-2"
elocr2_item.stack_size = 4

local elocr2_recipe = table.deepcopy(data.raw['recipe']['locomotive'])
elocr2_recipe.name = "et-electric-locomotive-2"
elocr2_recipe.energy_required = 2
elocr2_recipe.ingredients = {
	{type = "item", name = "electric-engine-unit", amount = 10},
	{type = "item", name = "et-electric-locomotive-1", amount = 4},
	--{type = "item", name = "electric-component-r1", amount = 10},
	{type = "item", name = "electronic-circuit", amount = 4}
}
elocr2_recipe.results = {{type="item", name="et-electric-locomotive-2", amount=1}}
elocr2_recipe.categories = {"red-workshop-locomotive"}

local elocr2 = table.deepcopy(data.raw['locomotive']['locomotive'])
elocr2.name = "et-electric-locomotive-2"
elocr2.minable.results = {{type="item", name="et-electric-locomotive-2", amount=1}}
elocr2.max_health = 2000
elocr2.max_speed = 5		--216 * 5 = 1080 km/h
elocr2.max_power = "10MW"
elocr2.reversing_power_modifier = 1
elocr2.braking_force = 75
elocr2.friction_force = 0.15
elocr2.air_resistance = 0.00375
elocr2.energy_source.fuel_inventory_size = 0
elocr2.energy_source.fuel_categories = {"et-electric-fuel"}
elocr2.collision_box = {{-0.6, -2.6}, {0.6, 2.6}}
elocr2.selection_box = {{-1, -3}, {1, 3}}
elocr2.drawing_box = {{-1, -4}, {1, 3}}
elocr2.connection_distance = 3
elocr2.joint_distance = 4
elocr2.pictures.rotated.layers = {{
	priority = "very-low",
	width = 512, height = 512, scale = 0.5,
	direction_count = 128,
	filenames = {
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-0.png",
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-1.png",
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-2.png",
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-3.png",
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-4.png",
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-5.png",
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-6.png",
		"__RERailworld__/graphics/entity/eletric-train/r2/eletric_r2_sheet-7.png",
	},
	line_length = 4,
	lines_per_file = 4,
	shift = {0, -0.625}
}}

data:extend({elocr2_item,elocr2_recipe,elocr2})
--ELECTRIC TRAIN R3
local elocr3_item = table.deepcopy(data.raw['item-with-entity-data']['locomotive'])
elocr3_item.name = "et-electric-locomotive-3"
elocr3_item.icon = "__RERailworld__/graphics/icons/eletric-train/eletric-r3.png"
elocr3_item.icon_size = 32
elocr3_item.subgroup = "re-eletricTrain"
elocr3_item.order = "b-c"
elocr3_item.place_result = "et-electric-locomotive-3"
elocr3_item.stack_size = 4

local elocr3_recipe = table.deepcopy(data.raw['recipe']['locomotive'])
elocr3_recipe.name = "et-electric-locomotive-3"
elocr3_recipe.energy_required = 2
elocr3_recipe.ingredients = {
	{type = "item", name = "electric-engine-unit", amount = 2},
	{type = "item", name = "et-electric-locomotive-2", amount = 4},
	{type = "item", name = "electronic-circuit", amount = 4}
}
elocr3_recipe.results = {{type="item", name="et-electric-locomotive-3", amount=1}}
elocr3_recipe.categories = {"red-workshop-locomotive"}

local elocr3 = table.deepcopy(data.raw['locomotive']['locomotive'])
elocr3.name = "et-electric-locomotive-3"
elocr3.minable.results = {{type="item", name="et-electric-locomotive-3", amount=1}}
elocr3.max_health = 3500
elocr3.max_speed = 40			--216*40 = 8640 km/h
elocr3.max_power = "50MW"
elocr3.reversing_power_modifier = 1
elocr3.braking_force = 500
elocr3.friction_force = 0.0000001
elocr3.air_resistance = 0.0000001
elocr3.energy_source.fuel_inventory_size = 0
elocr3.energy_source.fuel_categories = {"et-electric-fuel"}
elocr3.collision_box = {{-0.6, -2.6}, {0.6, 2.6}}
elocr3.selection_box = {{-1, -3}, {1, 3}}
elocr3.drawing_box = {{-1, -4}, {1, 3}}
elocr3.connection_distance = 3
elocr3.joint_distance = 4
elocr3.pictures.rotated = {
	priority = "very-low",
	width = 512, height = 512, scale = 0.5,
	direction_count = 128,
	layers = {
		{
			priority = "very-low",
			width = 256,
			height = 256,
			direction_count = 128,
			filenames = {
				"__RERailworld__/graphics/entity/eletric-train/r3/eletric-loco1-1.png",
				"__RERailworld__/graphics/entity/eletric-train/r3/eletric-loco1-2.png"
			},
			line_length = 8,
			lines_per_file = 8,
			shift = {0.0, -0.75}
		},
		{
			priority = "very-low",
			flags = {"mask"},
			width = 256,
			height = 256,
			direction_count = 128,
			filenames = {
				"__RERailworld__/graphics/entity/eletric-train/r3/eletric-loco1-1-tint.png",
				"__RERailworld__/graphics/entity/eletric-train/r3/eletric-loco1-2-tint.png"
			},
			line_length = 8,
			lines_per_file = 8,
			apply_runtime_tint = true,
			shift = {0.0, -0.75}
		},
		{
			priority = "very-low",
			flags = {"shadow"},
			width = 256,
			height = 256,
			direction_count = 128,
			draw_as_shadow = true,
			filenames = {
				"__RERailworld__/graphics/entity/eletric-train/r3/eletric-loco1-shadow-1.png",
				"__RERailworld__/graphics/entity/eletric-train/r3/eletric-loco1-shadow-2.png"
			},
			line_length = 8,
			lines_per_file = 8,
			shift = {0.5, -0.5}
		}
	}
}
data:extend({elocr3_item,elocr3_recipe,elocr3})






local ppro_item = table.deepcopy(data.raw['item']['accumulator'])
ppro_item.name = "et-control-station-1"
ppro_item.icon = "__RERailworld__/graphics/icons/eletric-train/provider.png"
ppro_item.icon_size = 32
ppro_item.subgroup = "re-workshop"
ppro_item.order = "a-a"
ppro_item.place_result = "et-control-station-1"

local ppro_recipe = table.deepcopy(data.raw['recipe']['accumulator'])
ppro_recipe.name = "et-control-station-1"
ppro_recipe.ingredients = {
	{type = "item", name = "accumulator", amount = 2},
	{type = "item", name = "advanced-circuit", amount = 1}
}
ppro_recipe.results = {{type="item", name="et-control-station-1", amount=1}}

data:extend({ppro_item,ppro_recipe})

local provider = table.deepcopy(data.raw['electric-energy-interface']['electric-energy-interface'])	
provider.name = "et-control-station-1"
provider.icon = "__RERailworld__/graphics/icons/eletric-train/provider.png"
provider.icon_size = 32
provider.minable.results = {{type="item", name="et-control-station-1", amount=1}}
provider.enable_gui = false
provider.allow_copy_paste = false
provider.energy_source = {
	type = "electric",
	buffer_capacity = "500MJ",
	usage_priority = "secondary-input",
	input_flow_limit = "250MW",
	output_flow_limit = "0kW"
}
provider.energy_production = "0kW"
provider.energy_usage = "1000kW"
provider.drain = "5000kW"
provider.picture = {
	filename = "__RERailworld__/graphics/entity/eletric-train/provider.png",
	width = 256, 
	height = 256,
	scale = 0.5, 
	shift = {0.5, -0.375},
	frame_count = 1,
	line_length = 1,			
	animation_speed = 1,
}
provider.collision_box = {{-1.2,-1.2},{1.2,1.2}}
provider.selection_box = {{-1.5,-1.5},{1.5,1.5}}

data:extend({provider})

local fuel = table.deepcopy(data.raw['item']['wood'])
fuel.name = "et-electric-locomotive-fuel"
fuel.fuel_value = "200kJ"
fuel.fuel_categories = {"et-electric-fuel"}
fuel.hidden = true
fuel.stack_size = 1
	
data:extend({fuel})

function format_number(number_string)
	local number = number_string:match('%d+%.?%d*')
	local append_suffix = number_string:match('%a+')
	
	local pre = ""
	local typ = ""
	
	if append_suffix:len() == 2 then
		pre =  append_suffix:sub(1, 1):upper()
		typ =  append_suffix:sub(2):upper()
	elseif append_suffix:len() == 1 then
		typ = append_suffix:upper()
	end

	
	if pre == "K" then
		number = number * 1000
	elseif pre == "M" then
		number = number * 1000000
	end
		
	if typ == "W" then
		number = number / 60
	end
	return number
end

function CreateTrainInterface(train)
	local power = format_number(train.max_power)	
	local energy = power * 1.1

	data:extend(
	{
		{
			type = "electric-energy-interface",
			name = train.name .. "-power",
			icon = train.icon,
			icon_size = 32,
			localised_name = {"entity-name." .. train.name},
			collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			selectable_in_game = false,
			energy_source = {
				type = "electric",
				--buffer_capacity = (energy * 2) .. "J",
				buffer_capacity = "500MJ",
				usage_priority = "secondary-input",
				--input_flow_limit = energy .. "J" ,
				input_flow_limit = train.max_power,
				--drain = power / 10 .. "J" ,
				drain = "0W",
				render_no_network_icon = true,
				render_no_power_icon = true
			},
			picture = {
				filename = "__core__/graphics/empty.png",
				priority = "extra-high",
				width = 1,
				height = 1
			},
			order = "z"
		}
	})
end

CreateTrainInterface(data.raw['locomotive']['et-electric-locomotive-1'])	
CreateTrainInterface(data.raw['locomotive']['et-electric-locomotive-2'])
CreateTrainInterface(data.raw['locomotive']['et-electric-locomotive-3'])
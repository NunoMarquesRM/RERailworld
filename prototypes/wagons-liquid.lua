data:extend({ 
--ENTITY
{--Liquid Wagon R1
	type = "fluid-wagon",
	name = "fluid-wagon-r1",
	icon = "__RERailworld__/graphics/icons/wagon/liquid-wagon-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	capacity = 150000, --150k
	minable = {mining_time = 1, result = "fluid-wagon-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 1000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1, -2.7}, {1, 3.29}},
	gui_front_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/front-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_center_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/center-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_back_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/back-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_connect_front_center_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/connector-front-center.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_connect_center_back_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/connector-center-back.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_front_center_tank_indiciation = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/1.png",
		width = 32,
		height = 32,
		flags = {"icon"}
	},
	gui_center_back_tank_indiciation = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/2.png",
		width = 32,
		height = 32,
		flags = {"icon"}
	},
	vertical_selection_shift = -0.8,
	weight = 1500,
	max_speed = 2.4,
	braking_force = 20,
	friction_force = 0.25,
	air_resistance = 0.00375,
	connection_distance = 3,
	joint_distance = 4,
	energy_per_hit_point = 5,    
	resistances = {
		{type = "fire", decrease = 15, percent = 50 },
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
		{type = "explosion",decrease = 15,percent = 30},
		{type = "acid",decrease = 10,percent = 20}
	},
	pictures = {
		priority = "very-low",
		width = 512, height = 512, scale = 0.5,
		back_equals_front = true,
		direction_count = 64,
		filenames = {
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r1-sheet-0.png",
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r1-sheet-1.png",
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r1-sheet-2.png",
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r1-sheet-3.png",
		},
		line_length = 4,
		lines_per_file = 4,
		shift = {0.42, -1}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Liquid Wagon R1
	type = "fluid-wagon",
	name = "fluid-wagon-r2",
	icon = "__RERailworld__/graphics/icons/wagon/liquid-wagon-r2.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	minable = {mining_time = 1, result = "fluid-wagon-r2"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000,
	capacity = 250000, --250k
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1, -2.7}, {1, 3.29}},
	gui_front_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/front-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_center_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/center-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_back_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/back-tank.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_connect_front_center_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/connector-front-center.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_connect_center_back_tank = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/connector-center-back.png",
		width = 64,
		height = 64,
		flags = {"icon"}
	},
	gui_front_center_tank_indiciation = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/1.png",
		width = 32,
		height = 32,
		flags = {"icon"}
	},
	gui_center_back_tank_indiciation = {
		filename = "__base__/graphics/entity/fluid-wagon/gui/2.png",
		width = 32,
		height = 32,
		flags = {"icon"}
	},
	vertical_selection_shift = -0.8,
	weight = 3000,
	max_speed = 5,	--216 * 5 = 1080 km/h
	braking_force = 50, 
	friction_force = 0.15, 
	air_resistance = 0.00375,		
	connection_distance = 3,
	joint_distance = 4,
	energy_per_hit_point = 5,    
	resistances = {
		{type = "fire", decrease = 15, percent = 50 },
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
		{type = "explosion",decrease = 15,percent = 30},
		{type = "acid",decrease = 10,percent = 20}
	},
	pictures = {
		priority = "very-low",
		width = 512, height = 512, scale = 0.5,
		back_equals_front = true,
		direction_count = 64,
		filenames = {
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r2-sheet-0.png",
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r2-sheet-1.png",
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r2-sheet-2.png",
			"__RERailworld__/graphics/entity/liquid-wagon/liquid-wagon-r2-sheet-3.png",
		},
		line_length = 4,
		lines_per_file = 4,
		shift = {0.42, -0.875}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = {sound ={filename = "__base__/sound/train-wheels.ogg",volume = 0.5},match_volume_to_activity = true,},
	crash_trigger = crash_trigger(),
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
}, 
})
--RAILWAY R1
local fwag_r1 = table.deepcopy(data.raw['recipe']['fluid-wagon'])
fwag_r1.name = "fluid-wagon-r1"
fwag_r1.enabled = false
fwag_r1.ingredients = {
	{"fluid-wagon", 1},
	{"iron-gear-wheel", 5},
	{"copper-gear-wheel-r1", 5},
	{"steel-plate", 10}
}
fwag_r1.result = "fluid-wagon-r1"
fwag_r1.category = "red-workshop-wagon"

local fwag_r1_item = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fwag_r1_item.name = "fluid-wagon-r1"
fwag_r1_item.icon = "__RERailworld__/graphics/icons/wagon/liquid-wagon-r1.png"
fwag_r1_item.icon_size = 32
fwag_r1_item.subgroup = "re-wagonsLiquid"
fwag_r1_item.order = "e-a"
fwag_r1_item.place_result = "fluid-wagon-r1"

data:extend({fwag_r1,fwag_r1_item})
--RAILWAY R2
local fwag_r2 = table.deepcopy(data.raw['recipe']['fluid-wagon'])
fwag_r2.name = "fluid-wagon-r2"
fwag_r2.enabled = false
fwag_r2.ingredients = {
	{"fluid-wagon-r1", 2},
	{"electric-component-r1", 5},
	{"cable-r1",5},
	{"reinforced-component-r1", 5}
}
fwag_r2.result = "fluid-wagon-r2"
fwag_r2.category = "red-workshop-wagon"

local fwag_r2_item = table.deepcopy(data.raw['item-with-entity-data']['fluid-wagon'])
fwag_r2_item.name = "fluid-wagon-r2"
fwag_r2_item.icon = "__RERailworld__/graphics/icons/wagon/liquid-wagon-r2.png"
fwag_r2_item.icon_size = 32
fwag_r2_item.subgroup = "re-wagonsLiquid"
fwag_r2_item.order = "e-b"
fwag_r2_item.place_result = "fluid-wagon-r2"

data:extend({fwag_r2,fwag_r2_item})
local drive_over_tie = function()
  return
  {
    type = "play-sound",
    sound = sound_variations("__base__/sound/train-tie", 6, 0.4, { volume_multiplier("main-menu", 2.4), volume_multiplier("driving", 1.3) } )
  }
end

data:extend({ 
--ENTITY
{--Cargo Wagon R1
	type = "cargo-wagon",
	name = "cargo-wagon-r1",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	inventory_size = 150,
	minable = {mining_time = 1, result = "cargo-wagon-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 1000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, 
	joint_distance = 4,
	weight = 1500,
	max_speed = 2.4,	--216 * 2.4 = 518,4 km/h
	braking_force = 20,
	friction_force = 0.25,
	air_resistance = 0.00375,
	energy_per_hit_point = 5,    
	resistances = {
		{type = "fire", decrease = 15, percent = 50 },
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
		{type = "explosion",decrease = 15,percent = 30},
		{type = "acid",decrease = 10,percent = 20}
	},
	vertical_selection_shift = -0.5,
	pictures = {
		priority = "very-low",
		width = 256,
		height = 256,
		back_equals_front = true,
		direction_count = 64,
		filename = "__RERailworld__/graphics/entity/wagon/cargo-wagon-r1.png",      
		line_length = 8,
		lines_per_file = 8,
		shift = {0.42, -1.125}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = {
		sound = {
			filename = "__base__/sound/train-wheels.ogg",
			volume = 0.5
		},
		match_volume_to_activity = true,
	},
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Cargo Wagon R2
	type = "cargo-wagon",
	name = "cargo-wagon-r2",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r2.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-r2"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000, corpse = "medium-remnants", dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, 
	joint_distance = 4,
	weight = 2000,
	max_speed = 40 ,	--216*40 = 8640 km/h
	braking_force = 500, 
	friction_force = 0.0000001, 
	air_resistance = 0.0000001,
	energy_per_hit_point = 5,    
	resistances = { {type = "impact",decrease = 50,percent = 60},},
	vertical_selection_shift = -0.5,
	pictures = {
		priority = "very-low",			
		width = 512,
		height = 512,
		scale = 0.5,
		back_equals_front = true,
		direction_count = 64,
		filenames = {
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-r2-sheet-0.png",      
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-r2-sheet-1.png",      
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-r2-sheet-2.png",      
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-r2-sheet-3.png",      				
		},
		line_length = 4,
		lines_per_file = 4,
		shift = {0.42, -0.875}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound =	{ sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Copper Wagon
	type = "cargo-wagon",
	name = "cargo-wagon-copper-r1",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-copper-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-copper-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, 
	joint_distance = 4,
	weight = 2000,
	max_speed = 40, braking_force = 500, friction_force = 0.0000001, air_resistance = 0.0000001,
	vertical_selection_shift = -0.5,
	energy_per_hit_point = 5,
	pictures = {
		priority = "very-low",
		width = 256,
		height = 256,
		back_equals_front = true,
		direction_count = 64,
		filenames = { "__RERailworld__/graphics/entity/wagon/cargo-wagon-copper-r1.png", },			
		line_length = 8,
		lines_per_file = 8,
		shift = {0.42, -1.125}			
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Copper Wagon
	type = "cargo-wagon",
	name = "cargo-wagon-iron-r1",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-iron-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-iron-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, 
	joint_distance = 4,
	weight = 2000,
	max_speed = 40, braking_force = 500, friction_force = 0.0000001, air_resistance = 0.0000001,
	vertical_selection_shift = -0.5,
	energy_per_hit_point = 5,
	pictures = {
		priority = "very-low",
		width = 256,
		height = 256,
		back_equals_front = true,
		direction_count = 64,
		filenames = { "__RERailworld__/graphics/entity/wagon/cargo-wagon-iron-r1.png", },			
		line_length = 8,
		lines_per_file = 8,
		shift = {0.42, -1.125}			
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Coal Wagon
	type = "cargo-wagon",
	name = "cargo-wagon-coal-r1",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-coal-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-coal-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000, corpse = "medium-remnants", dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, joint_distance = 4,
	weight = 2000,
	max_speed = 40, braking_force = 500, friction_force = 0.0000001, air_resistance = 0.0000001,
	energy_per_hit_point = 5,    
	resistances = { {type = "impact",decrease = 50,percent = 60},},
	vertical_selection_shift = -0.5,
	pictures = {
		priority = "very-low",
		width = 256,
		height = 256,
		back_equals_front = true,
		direction_count = 64,
		filename = "__RERailworld__/graphics/entity/wagon/cargo-wagon-coal-r1.png",  
		line_length = 8,
		lines_per_file = 8,
		shift = {0.42, -1.125}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound =	{ sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Stone Wagon R1
	type = "cargo-wagon",
	name = "cargo-wagon-stone-r1",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-stone-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-stone-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",					
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, joint_distance = 4,
	weight = 2000,
	max_speed = 40, braking_force = 500, friction_force = 0.0000001, air_resistance = 0.0000001,
	vertical_selection_shift = -0.5,
	energy_per_hit_point = 5,    
	pictures = {
		priority = "very-low",
		width = 512, height = 512, scale = 0.5,
		back_equals_front = true,
		direction_count = 64,
		filenames = { 
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-0.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-1.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-2.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-3.png",
		},			
		line_length = 4,
		lines_per_file = 4,
		shift = {0, -1.125}			
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Stone Wagon R2
	type = "cargo-wagon",
	name = "cargo-wagon-stone-r2",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-stone-r2.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-stone-r2"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000, corpse = "medium-remnants", dying_explosion = "medium-explosion",					
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},
	connection_distance = 3, joint_distance = 4,
	weight = 2000,
	max_speed = 40, braking_force = 500, friction_force = 0.0000001, air_resistance = 0.0000001,
	vertical_selection_shift = -0.5,
	energy_per_hit_point = 5,
	pictures = {
		priority = "very-low",
		width = 512, height = 512, scale = 0.5,
		back_equals_front = true,
		direction_count = 64,
		filenames = { 
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-0.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-1.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-2.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-3.png",
		},			
		line_length = 4,
		lines_per_file = 4,
		shift = {0, -1.125}			
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Uranium Wagon R1
	type = "cargo-wagon",
	name = "cargo-wagon-uranium-r1",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-uranium-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-uranium-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",		
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, joint_distance = 4,
	weight = 2000,
	max_speed = 40, braking_force = 500, friction_force = 0.0000001, air_resistance = 0.0000001,
	energy_per_hit_point = 5,    
	resistances = {
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
		{type = "acid",decrease = 10,percent = 20}
	},
	vertical_selection_shift = -0.5,
	pictures = {
		priority = "very-low",
		width = 512,
		height = 512,
		scale = 0.5,
		back_equals_front = true,
		direction_count = 64,
		filenames = {
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r1-sheet-0.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r1-sheet-1.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r1-sheet-2.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r1-sheet-3.png",
		},			
		line_length = 4,
		lines_per_file = 4,
		shift = {0.42, -1.125}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
{--Uranium Wagon R2
	type = "cargo-wagon",
	name = "cargo-wagon-uranium-r2",
	icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-uranium-r2.png",
	icon_size = 32,
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
	inventory_size = 250,
	minable = {mining_time = 1, result = "cargo-wagon-uranium-r2"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2000,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",		
	collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
	selection_box = {{-1.0, -2.7}, {1, 3.2}},		
	connection_distance = 3, joint_distance = 4,
	weight = 2000,
	max_speed = 40, braking_force = 500, friction_force = 0.0000001, air_resistance = 0.0000001,
	energy_per_hit_point = 5,    
	resistances = {
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
		{type = "acid",decrease = 10,percent = 20}
	},
	vertical_selection_shift = -0.5,
	pictures = {
		priority = "very-low",
		width = 512,
		height = 512,
		scale = 0.5,
		back_equals_front = true,
		direction_count = 64,
		filenames = {
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r2-sheet-0.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r2-sheet-1.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r2-sheet-2.png",
			"__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r2-sheet-3.png",
		},
		line_length = 4,
		lines_per_file = 4,
		shift = {0.42, -1.125}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
	crash_trigger = crash_trigger(),
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
	sound_minimum_speed = 0.5;
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
},
})

local cwag_r1 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
cwag_r1.name = "cargo-wagon-r1"
cwag_r1.enabled = false
cwag_r1.ingredients = {
	{type = "item", name = "cargo-wagon", amount = 1},
	{type = "item", name = "iron-gear-wheel", amount = 5},
	{type = "item", name = "copper-gear-wheel-r1", amount = 5},
	{type = "item", name = "steel-plate", amount = 10}
}
cwag_r1.results = {{type="item", name="cargo-wagon-r1", amount=1}}
cwag_r1.category = "red-workshop-wagon"

local cwag_r1_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cwag_r1_item.name = "cargo-wagon-r1"
cwag_r1_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r1.png"
cwag_r1_item.icon_size = 32
cwag_r1_item.subgroup = "re-wagons"
cwag_r1_item.order = "d-a"
cwag_r1_item.place_result = "cargo-wagon-r1"

data:extend({cwag_r1,cwag_r1_item})
--RAILWAY R2
local cwag_r2 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
cwag_r2.name = "cargo-wagon-r2"
cwag_r2.enabled = false
cwag_r2.ingredients = {
	{type = "item", name = "cargo-wagon-r1", amount = 1},
	{type = "item", name = "electric-component-r1", amount = 5},
	{type = "item", name = "cable-r1", amount = 5},
	{type = "item", name = "reinforced-component-r1", amount = 5}
}
cwag_r2.results = {{type="item", name="cargo-wagon-r2", amount=1}}
cwag_r2.category = "red-workshop-wagon"

local cwag_r2_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
cwag_r2_item.name = "cargo-wagon-r2"
cwag_r2_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r2.png"
cwag_r2_item.icon_size = 32
cwag_r2_item.subgroup = "re-wagons"
cwag_r2_item.order = "d-b"
cwag_r2_item.place_result = "cargo-wagon-r2"

data:extend({cwag_r2,cwag_r2_item})
--RAILWAY R3

--Copper Wagon
local copwag_r1 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
copwag_r1.name = "cargo-wagon-copper-r1"
copwag_r1.enabled = false
copwag_r1.ingredients = {
	{type = "item", name = "cargo-wagon-r2", amount = 1},
	{type = "item", name = "reinforced-copper-plate-r1", amount = 20},
	{type = "item", name = "reinforced-gear-copper-r1", amount = 5}
}
copwag_r1.results = {{type="item", name="cargo-wagon-copper-r1", amount=1}}
copwag_r1.category = "red-workshop-wagon"

local copwag_r1_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
copwag_r1_item.name = "cargo-wagon-copper-r1"
copwag_r1_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-copper-r1.png"
copwag_r1_item.icon_size = 32
copwag_r1_item.subgroup = "re-wagons-per"
copwag_r1_item.order = "f-a"
copwag_r1_item.place_result = "cargo-wagon-copper-r1"

data:extend({copwag_r1,copwag_r1_item})

--Iron Wagon
local ironwag_r1 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
ironwag_r1.name = "cargo-wagon-iron-r1"
ironwag_r1.enabled = false
ironwag_r1.ingredients = {
	{type = "item", name = "cargo-wagon-r2", amount = 1},
	{type = "item", name = "reinforced-iron-plate-r1", amount = 20},
	{type = "item", name = "reinforced-gear-iron-r1", amount = 5}
}
ironwag_r1.results = {{type="item", name="cargo-wagon-iron-r1", amount=1}}
ironwag_r1.category = "red-workshop-wagon"

local ironwag_r1_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
ironwag_r1_item.name = "cargo-wagon-iron-r1"
ironwag_r1_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-iron-r1.png"
ironwag_r1_item.icon_size = 32
ironwag_r1_item.subgroup = "re-wagons-per"
ironwag_r1_item.order = "f-b"
ironwag_r1_item.place_result = "cargo-wagon-iron-r1"

data:extend({ironwag_r1,ironwag_r1_item})

--Coal Wagon R1
local coalwag_r1 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
coalwag_r1.name = "cargo-wagon-coal-r1"
coalwag_r1.enabled = false
coalwag_r1.ingredients = {
	{type = "item", name = "cargo-wagon-r2", amount = 1},
	{type = "item", name = "reinforced-coal-plate-r1", amount = 20},
	{type = "item", name = "reinforced-component-r1", amount = 5}
}
coalwag_r1.results = {{type="item", name="cargo-wagon-coal-r1", amount=1}}
coalwag_r1.category = "red-workshop-wagon"

local coalwag_r1_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
coalwag_r1_item.name = "cargo-wagon-coal-r1"
coalwag_r1_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-coal-r1.png"
coalwag_r1_item.icon_size = 32
coalwag_r1_item.subgroup = "re-wagons-per"
coalwag_r1_item.order = "f-d"
coalwag_r1_item.place_result = "cargo-wagon-coal-r1"

data:extend({coalwag_r1,coalwag_r1_item})

--Stone Wagon R1
local stonewag_r1 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
stonewag_r1.name = "cargo-wagon-stone-r1"
stonewag_r1.enabled = false
stonewag_r1.ingredients = {
	{type = "item", name = "cargo-wagon-r2", amount = 1},
	{type = "item", name = "stone", amount = 50},
	{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
	{type = "item", name = "steel-plate", amount = 10}
}
stonewag_r1.results = {{type="item", name="cargo-wagon-stone-r1", amount=1}}
stonewag_r1.category = "red-workshop-wagon"

local stonewag_r1_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
stonewag_r1_item.name = "cargo-wagon-stone-r1"
stonewag_r1_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-stone-r1.png"
stonewag_r1_item.icon_size = 32
stonewag_r1_item.subgroup = "re-wagons-per"
stonewag_r1_item.order = "f-e"
stonewag_r1_item.place_result = "cargo-wagon-stone-r1"

data:extend({stonewag_r1,stonewag_r1_item})

--Stone Wagon R2
local stonewag_r2 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
stonewag_r2.name = "cargo-wagon-stone-r2"
stonewag_r2.enabled = false
stonewag_r2.ingredients = {
	{type = "item", name = "cargo-wagon-r2", amount = 1},
	{type = "item", name = "stone", amount = 50},
	{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
	{type = "item", name = "steel-plate", amount = 10}
}
stonewag_r2.results = {{type="item", name="cargo-wagon-stone-r2", amount=1}}
stonewag_r2.category = "red-workshop-wagon"

local stonewag_r2_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
stonewag_r2_item.name = "cargo-wagon-stone-r2"
stonewag_r2_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-stone-r2.png"
stonewag_r2_item.icon_size = 32
stonewag_r2_item.subgroup = "re-wagons-per"
stonewag_r2_item.order = "f-f"
stonewag_r2_item.place_result = "cargo-wagon-stone-r2"

data:extend({stonewag_r2,stonewag_r2_item})

--Uranium Wagon R1
local urawag_r1 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
urawag_r1.name = "cargo-wagon-uranium-r1"
urawag_r1.enabled = false
urawag_r1.ingredients = {
	{type = "item", name = "cargo-wagon-r2", amount = 1},
	{type = "item", name = "uranium-ore", amount = 50},
	{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
	{type = "item", name = "steel-plate", amount = 10}
}
urawag_r1.results = {{type="item", name="cargo-wagon-uranium-r1", amount=1}}
urawag_r1.category = "red-workshop-wagon"

local urawag_r1_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
urawag_r1_item.name = "cargo-wagon-uranium-r1"
urawag_r1_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-uranium-r1.png"
urawag_r1_item.icon_size = 32
urawag_r1_item.subgroup = "re-wagons-per"
urawag_r1_item.order = "f-g"
urawag_r1_item.place_result = "cargo-wagon-uranium-r1"

data:extend({urawag_r1,urawag_r1_item})

--Uranium Wagon R2
local urawag_r2 = table.deepcopy(data.raw['recipe']['cargo-wagon'])
urawag_r2.name = "cargo-wagon-uranium-r2"
urawag_r2.enabled = false
urawag_r2.ingredients = {
	{type = "item", name = "cargo-wagon-r2", amount = 1},
	{type = "item", name = "uranium-ore", amount = 50},
	{type = "item", name = "reinforced-gear-iron-r1", amount = 5},
	{type = "item", name = "steel-plate", amount = 10}
}
urawag_r2.results = {{type="item", name="cargo-wagon-uranium-r2", amount=1}}
urawag_r2.category = "red-workshop-wagon"

local urawag_r2_item = table.deepcopy(data.raw['item-with-entity-data']['cargo-wagon'])
urawag_r2_item.name = "cargo-wagon-uranium-r2"
urawag_r2_item.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-uranium-r2.png"
urawag_r2_item.icon_size = 32
urawag_r2_item.subgroup = "re-wagons-per"
urawag_r2_item.order = "f-h"
urawag_r2_item.place_result = "cargo-wagon-uranium-r2"

data:extend({urawag_r2,urawag_r2_item})
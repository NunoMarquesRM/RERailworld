data:extend({
--RECIPE
	{--Sonic Train R1
		type = "recipe",
		name = "sonic-train-r1",
		enabled = "false",
		ingredients = {
			{"locomotive",2},
			{"steel-plate",200},
			{"iron-plate",500}
		},
		result = "sonic-train-r1",
		category = "red-workshop-locomotive"
	},
	{--Sonic Train R2
		type = "recipe",
		name = "sonic-train-r2",
		enabled = "false",
		ingredients = {
			{"sonic-train-r1",3},
			{"steel-plate",500},
			{"iron-plate",500},
			{"electronic-circuit",200}
		},
		result = "sonic-train-r2",
		category = "red-workshop-locomotive"
	},
	{--Sonic Train R3
		type = "recipe",
		name = "sonic-train-r3",
		enabled = "false",
		ingredients = {
			{"sonic-train-r2",5},
			{"steel-plate",1000},
			{"iron-plate",1000},
			{"electronic-circuit",700}
		},
		result = "sonic-train-r3",
		category = "red-workshop-locomotive"
	},
	--FUEL
    {--Giga Fuel 1
		type = "recipe",
		name = "giga-fuel",
		category = "crafting-with-fluid",
		enabled = "false",
		ingredients = {
			{type="fluid", name="light-oil", amount=300},
			{"coal",300}
		},
		result = "giga-fuel",
		category = "red-enrichment-chamber"
	},
	{--Giga Fuel 2
		type = "recipe",
		name = "giga-fuel2",
		category = "crafting-with-fluid",
		enabled = "false",
		ingredients = {
			{type="fluid", name="heavy-oil", amount=300},
			{"coal",300}
		},
		result = "giga-fuel",
		category = "red-enrichment-chamber"
	},
	{--Giga Fuel 3
		type = "recipe",
		name = "giga-fuel3",
		enabled = "false",
		ingredients = {
			{"solid-fuel",100}
		},
		results = {{name = "giga-fuel", amount = 3}},
		category = "red-extreme-fuel"
	},
	{--Giga Fuel R2
		type = "recipe",
		name = "giga-fuel-r2",
		enabled = "false",
		ingredients = {
			{"giga-fuel",15},
			{"solid-fuel",15}
		},
		results = {{name = "giga-fuel-r2", amount = 10}},
		category = "red-extreme-fuel"
	},
	{--Giga Fuel R3
		type = "recipe",
		name = "giga-fuel-r3",
		enabled = "false",
		ingredients = {
			{"giga-fuel-r2",10},
			{"uranium-fuel-cell",15}
		},
		results = {{name = "giga-fuel-r3", amount = 4}},
		category = "red-extreme-fuel"
	},
--ITEM
	{--Sonic Train R1
		type = "item",
		name = "sonic-train-r1",
		icon = "__RERailworld__/graphics/icons/sonicTrains/sonic-train-r1.png",
		icon_size = 32,
		subgroup = "re-sonicTrain",
		order = "c-a",
		place_result = "sonic-train-r1",
		stack_size = 5,
	},
	{--Sonic Train R2
		type = "item",
		name = "sonic-train-r2",
		icon = "__RERailworld__/graphics/icons/sonicTrains/sonic-train-r2.png",
		icon_size = 32,
		subgroup = "re-sonicTrain",
		order = "c-b",
		place_result = "sonic-train-r2",
		stack_size = 5,
	},
    {--Sonic Train R3
		type = "item",
		name = "sonic-train-r3",
		icon = "__RERailworld__/graphics/icons/sonicTrains/sonic-train-r3.png",
		icon_size = 32,
		subgroup = "re-sonicTrain",
		order = "c-c",
		place_result = "sonic-train-r3",
		stack_size = 5,
	},
	--FUEL
	{--Giga Fuel R1
		type = "item",
		name = "giga-fuel",
		fuel_value = "2GJ",
		fuel_acceleration_multiplier = 2.9,
		fuel_category = "extreme-fuel-r1",
		fuel_top_speed_multiplier = 2.3,
		icon = "__RERailworld__/graphics/icons/sonicTrains/coke-r1.png",
		icon_size = 32,
		subgroup = "re-sonic-fuel",
		order = "w-a",
		stack_size = 100
	},
	{--Giga Fuel R2
		type = "item",
		name = "giga-fuel-r2",
		fuel_value = "40GJ",
		fuel_acceleration_multiplier = 3.75,
		fuel_category = "extreme-fuel-r1",
		fuel_top_speed_multiplier = 3.5,
		icon = "__RERailworld__/graphics/icons/sonicTrains/coke-r2.png",
		icon_size = 32,
		subgroup = "re-sonic-fuel",
		order = "w-b",
		stack_size = 100
	},
	{--Giga Fuel R3
		type = "item",
		name = "giga-fuel-r3",
		fuel_value = "550GJ",
		fuel_acceleration_multiplier = 5.9,
		fuel_category = "extreme-fuel-r1",
		fuel_top_speed_multiplier = 5.95,
		icon = "__RERailworld__/graphics/icons/sonicTrains/coke-r3.png",
		icon_size = 32,
		subgroup = "re-sonic-fuel",
		order = "w-c",
		stack_size = 100
	},
--IMAGE	
{--Sonic Train R1
	type = "locomotive",
	name = "sonic-train-r1",
	icon = "__RERailworld__/graphics/icons/sonicTrains/sonic-train-r1.png",
	icon_size = 32,
	flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
	minable = {mining_time = 1, result = "sonic-train-r1"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 1500,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
	selection_box = {{-1, -3}, {1, 3}},
	drawing_box = {{-1, -4}, {1, 3}},
	connection_distance = 3, joint_distance = 4,		
	weight = 2000,
	max_speed = 8,	--216*8 = 1728 km/h
	max_power = "9000kW",
	reversing_power_modifier = 0.8,
	braking_force = 500,
	friction_force = 0.0000001,
	air_resistance = 0.000001,
	vertical_selection_shift = -0.5,
	energy_per_hit_point = 5,
	resistances ={
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
	},
	burner = {
		fuel_categories = {"nuclear","extreme-fuel-r1"},
		effectivity = 1,
		fuel_inventory_size = 1,
		smoke = { {
			name = "train-smoke",
			deviation = {0.3, 0.3},
			frequency = 100,
			position = {0, 0},
			starting_frame = 0,
			starting_frame_deviation = 60,
			height = 2,
			height_deviation = 0.5,
			starting_vertical_speed = 0.2,
			starting_vertical_speed_deviation = 0.1,
		} }
	},		
	front_light = {
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture = {
				filename = "__core__/graphics/light-cone.png",
				priority = "medium",
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {-0.6, -16},
			size = 2,
			intensity = 0.8
		},
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture = {
				filename = "__core__/graphics/light-cone.png",
				priority = "medium",
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {0.6, -16},
			size = 2,
			intensity = 0.8
		}
	},
	pictures = {
		priority = "very-low",
		width = 256,
		height = 256,
		direction_count = 128,
		filenames = {
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r1-sheet-0.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r1-sheet-1.png",
		},
		line_length = 8,
		lines_per_file = 8,
		shift = {0.2, -1.125}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	stop_trigger = {
		{-- left side
			type = "create-trivial-smoke",
			repeat_count = 75,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			speed = {-0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
		},
		{-- right side
			type = "create-trivial-smoke",
			repeat_count = 75,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			speed = {0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
		},
		{
			type = "play-sound",
			sound ={{filename = "__base__/sound/train-breaks.ogg",volume = 0.6},}
		},
	},
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound ={ sound = { filename = "__base__/sound/train-engine.ogg", volume = 0.5 }, match_speed_to_activity = true, },
	open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
	close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
	sound_minimum_speed = 0.2;
},
{--Sonic Train R2
	type = "locomotive",
	name = "sonic-train-r2",
	icon = "__RERailworld__/graphics/icons/sonicTrains/sonic-train-r2.png",
	icon_size = 32,
	flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
	minable = {mining_time = 1, result = "sonic-train-r2"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 2500,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
	selection_box = {{-1, -3}, {1, 3}},
	drawing_box = {{-1, -4}, {1, 3}},
	connection_distance = 3, joint_distance = 4,		
	weight = 2500,
	max_speed = 15,		--216*15 = 3240 km/h
	max_power = "15MW",
	reversing_power_modifier = 0.8,
	braking_force = 500,
	friction_force = 0.0000001,
	air_resistance = 0.000001,
	vertical_selection_shift = -0.5,		
	energy_per_hit_point = 5,
	resistances = {
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
	},
	burner ={
		fuel_categories = {"nuclear","extreme-fuel-r1"},
		effectivity = 1.4,
		fuel_inventory_size = 1,
		smoke ={{
			name = "train-smoke",
			deviation = {0.3, 0.3},
			frequency = 100,
			position = {0, 0},
			starting_frame = 0,
			starting_frame_deviation = 60,
			height = 2,
			height_deviation = 0.5,
			starting_vertical_speed = 0.2,
			starting_vertical_speed_deviation = 0.1,
		}}
	},		
	front_light = {
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "medium",
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {-0.6, -18},
			size = 3,
			intensity = 1
		},
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "medium",
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {0.6, -18},
			size = 3,
			intensity = 1
		}
	},
	pictures = {
		priority = "very-low",
		width = 256,
		height = 256,
		direction_count = 128,
		filenames = {
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r2-sheet-0.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r2-sheet-1.png",
		},
		line_length = 8,
		lines_per_file = 8,
		shift = {0.42, -1.125}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	stop_trigger = {
		{-- left side
			type = "create-trivial-smoke",
			repeat_count = 75,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			speed = {-0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
		},
		{-- right side
			type = "create-trivial-smoke",
			repeat_count = 75,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			speed = {0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
		},
		{
			type = "play-sound",
			sound ={{filename = "__base__/sound/train-breaks.ogg",volume = 0.6},}
		},
	},
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound ={sound ={filename = "__base__/sound/train-engine.ogg",volume = 0.5},match_speed_to_activity = true,},
	open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
	close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
	sound_minimum_speed = 0.2;
},
{--Sonic Train R3
	type = "locomotive",
	name = "sonic-train-r3",
	icon = "__RERailworld__/graphics/icons/sonicTrains/sonic-train-r3.png",
	icon_size = 32,
	flags = {"placeable-neutral", "placeable-off-grid", },
	minable = {mining_time = 1, result = "sonic-train-r3"},
	mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
	max_health = 3500,
	corpse = "medium-remnants",
	dying_explosion = "medium-explosion",
	collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
	selection_box = {{-1, -3}, {1, 3}},
	drawing_box = {{-1, -4}, {1, 3}},
	connection_distance = 3, joint_distance = 4,		
	weight = 3500,
	max_speed = 40,			--216*40 = 8640 km/h
	max_power = "30MW",
	reversing_power_modifier = 0.8,
	braking_force = 500,
	friction_force = 0.0000001,
	air_resistance = 0.0000001,
	vertical_selection_shift = -0.5,
	energy_per_hit_point = 5,
	resistances = {
		{type = "physical", decrease = 15, percent = 30 },
		{type = "impact",decrease = 50,percent = 60},
	},
	burner = {
		fuel_categories = {"nuclear","extreme-fuel-r1"},
		effectivity = 1.1,
		fuel_inventory_size = 2,
		smoke = {{
			name = "train-smoke",
			deviation = {0.3, 0.3},
			frequency = 100,
			position = {0, 0},
			starting_frame = 0,
			starting_frame_deviation = 60,
			height = 2,
			height_deviation = 0.5,
			starting_vertical_speed = 0.2,
			starting_vertical_speed_deviation = 0.1,
		}}
	},		
	front_light = {
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "medium",
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {-0.6, -16},
			size = 2,
			intensity = 0.8
		},
		{
			type = "oriented",
			minimum_darkness = 0.3,
			picture =
			{
				filename = "__core__/graphics/light-cone.png",
				priority = "medium",
				scale = 2,
				width = 200,
				height = 200
			},
			shift = {0.6, -16},
			size = 2,
			intensity = 0.8
		}
	},
	pictures = {
		priority = "very-low",
		width = 512,
		height = 512,
		scale = 0.5,
		direction_count = 128,
		filenames = {
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-0.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-1.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-2.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-3.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-4.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-5.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-6.png",
			"__RERailworld__/graphics/entity/sonicTrains/sonic-train-r3-sheet-7.png",
		},
		line_length = 4,
		lines_per_file = 4,
		shift = {0, -1.125}
	},
	wheels = standard_train_wheels,
	rail_category = "regular",
	stop_trigger = {
		{-- left side
			type = "create-trivial-smoke",
			repeat_count = 75,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			speed = {-0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
		},
		{-- right side
			type = "create-trivial-smoke",
			repeat_count = 75,
			smoke_name = "smoke-train-stop",
			initial_height = 0,
			speed = {0.03, 0},
			speed_multiplier = 0.75,
			speed_multiplier_deviation = 1.1,
			offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
		},
		{
			type = "play-sound",
			sound =
			{
				{
					filename = "__base__/sound/train-breaks.ogg",
					volume = 0.6
				},
			}
		},
	},
	drive_over_tie_trigger = drive_over_tie(),
	tie_distance = 50,
	vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound ={sound ={filename = "__base__/sound/steam-engine-90bpm.ogg",volume = 0.7},match_speed_to_activity = true,},
	open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
	close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
	sound_minimum_speed = 0.2;
}
})
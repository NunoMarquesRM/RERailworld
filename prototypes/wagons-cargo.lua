data:extend({
    create_item("cargo-wagon-r1", "wagon/cargo-wagon-r1", 32,
        "re-wagons", "d-a", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-r2", "wagon/cargo-wagon-r2", 32,
        "re-wagons", "d-b", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-copper-r1", "wagon/cargo-wagon-copper-r1", 32,
        "re-wagons-per", "f-a", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-iron-r1", "wagon/cargo-wagon-iron-r1", 32,
        "re-wagons-per", "f-b", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-coal-r1", "wagon/cargo-wagon-coal-r1", 32,
        "re-wagons-per", "f-c", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-stone-r1", "wagon/cargo-wagon-stone-r1", 32,
        "re-wagons-per", "f-d", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-stone-r2", "wagon/cargo-wagon-stone-r2", 32,
        "re-wagons-per", "f-e", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-uranium-r1", "wagon/cargo-wagon-uranium-r1", 32,
        "re-wagons-per", "f-f", 5, sounds["train-pickup"], sounds["metal-large-drop"]),
    create_item("cargo-wagon-uranium-r2", "wagon/cargo-wagon-uranium-r2", 32,
        "re-wagons-per", "f-g", 5, sounds["train-pickup"], sounds["metal-large-drop"]),

    create_recipe("cargo-wagon-r1", 1, false,
        {
            {type = "item", name = "cargo-wagon", amount = 1},
            {type = "item", name = "iron-gear-wheel", amount = 5},
            {type = "item", name = "copper-gear-wheel-r1", amount = 5},
            {type = "item", name = "steel-plate", amount = 10}
        },
        {{type = "item", name = "cargo-wagon-r1", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-r2", 1, false,
        {
            {type = "item", name = "cargo-wagon-r1", amount = 1},
            {type = "item", name = "electric-component-r1", amount = 5},
            {type = "item", name = "cable-r1", amount = 5},
            {type = "item", name = "reinforced-component-r1", amount = 5}
        },
        {{type = "item", name = "cargo-wagon-r2", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-copper-r1", 1, false,
        {
            {type = "item", name = "cargo-wagon-r2", amount = 1},
            {type = "item", name = "reinforced-copper-plate-r1", amount = 20},
            {type = "item", name = "reinforced-gear-copper-r1", amount = 5}
        },
        {{type = "item", name = "cargo-wagon-copper-r1", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-iron-r1", 1, false,
        {
            {type = "item", name = "cargo-wagon-r2", amount = 1},
            {type = "item", name = "reinforced-iron-plate-r1", amount = 20},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 5}
        },
        {{type = "item", name = "cargo-wagon-iron-r1", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-coal-r1", 1, false,
        {
            {type = "item", name = "cargo-wagon-r2", amount = 1},
            {type = "item", name = "reinforced-coal-plate-r1", amount = 20},
            {type = "item", name = "reinforced-component-r1", amount = 5}
        },
        {{type = "item", name = "cargo-wagon-coal-r1", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-stone-r1", 1, false,
        {
            {type = "item", name = "cargo-wagon-r2", amount = 1},
            {type = "item", name = "stone", amount = 50},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 5},
            {type = "item", name = "steel-plate", amount = 10}
        },
        {{type = "item", name = "cargo-wagon-stone-r1", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-stone-r2", 1, false,
        {
            {type = "item", name = "cargo-wagon-r2", amount = 1},
            {type = "item", name = "stone", amount = 50},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 5},
            {type = "item", name = "steel-plate", amount = 10}
        },
        {{type = "item", name = "cargo-wagon-stone-r2", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-uranium-r1", 1, false,
        {
            {type = "item", name = "cargo-wagon-r2", amount = 1},
            {type = "item", name = "uranium-ore", amount = 50},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 5},
            {type = "item", name = "steel-plate", amount = 10}
        },
        {{type = "item", name = "cargo-wagon-uranium-r1", amount = 1}},
        {"red-workshop-wagon"}
    ),
    create_recipe("cargo-wagon-uranium-r2", 1, false,
        {
            {type = "item", name = "cargo-wagon-r2", amount = 1},
            {type = "item", name = "uranium-ore", amount = 50},
            {type = "item", name = "reinforced-gear-iron-r1", amount = 5},
            {type = "item", name = "steel-plate", amount = 10}
        },
        {{type = "item", name = "cargo-wagon-uranium-r2", amount = 1}},
        {"red-workshop-wagon"}
    ),


--ENTITY
{--Cargo Wagon R2
    type = "cargo-wagon",
    name = "cargo-wagon-r2",
    icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", },
    inventory_size = 250,
    minable = {mining_time = 1, result = "cargo-wagon-r2"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 2000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1.0, -2.7}, {1, 3.2}},
    connection_distance = 3,
    joint_distance = 4,
    weight = 2000,
    max_speed = 40 ,    --216*40 = 8640 km/h
    braking_force = 500,
    friction_force = 0.0000001,
    air_resistance = 0.0000001,
    energy_per_hit_point = 5,
    resistances = { {type = "impact",decrease = 50,percent = 60},},
    vertical_selection_shift = -0.5,
    pictures = {rotated = { layers = {{
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
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-r2-sheet-3.png"
        },
        line_length = 4,
        lines_per_file = 4,
        shift = {0.42, -0.875}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =    { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
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
    pictures = {rotated = { layers = {{
        priority = "very-low",
        width = 256,
        height = 256,
        back_equals_front = true,
        direction_count = 64,
        filenames = { "__RERailworld__/graphics/entity/wagon/cargo-wagon-copper-r1.png" },
        line_length = 8,
        lines_per_file = 8,
        shift = {0.42, -1.125}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 }
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
    pictures = {rotated = { layers = {{
        priority = "very-low",
        width = 256,
        height = 256,
        back_equals_front = true,
        direction_count = 64,
        filenames = { "__RERailworld__/graphics/entity/wagon/cargo-wagon-iron-r1.png", },
        line_length = 8,
        lines_per_file = 8,
        shift = {0.42, -1.125}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
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
    pictures = {rotated = { layers = {{
        priority = "very-low",
        width = 256,
        height = 256,
        back_equals_front = true,
        direction_count = 64,
        filename = "__RERailworld__/graphics/entity/wagon/cargo-wagon-coal-r1.png",  
        line_length = 8,
        lines_per_file = 8,
        shift = {0.42, -1.125}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =    { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
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
    pictures = {rotated = { layers = {{
        priority = "very-low",
        width = 512, height = 512, scale = 0.5,
        back_equals_front = true,
        direction_count = 64,
        filenames = { 
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-0.png",
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-1.png",
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-2.png",
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r1-sheet-3.png"
        },
        line_length = 4,
        lines_per_file = 4,
        shift = {0, -1.125}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 }
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
    pictures = {rotated = { layers = {{
        priority = "very-low",
        width = 512, height = 512, scale = 0.5,
        back_equals_front = true,
        direction_count = 64,
        filenames = {
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-0.png",
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-1.png",
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-2.png",
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-stone-r2-sheet-3.png"
        },
        line_length = 4,
        lines_per_file = 4,
        shift = {0, -1.125}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 }
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
    pictures = {rotated = { layers = {{
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
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r1-sheet-3.png"
        },
        line_length = 4,
        lines_per_file = 4,
        shift = {0.42, -1.125}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 }
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
    pictures = {rotated = { layers = {{
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
            "__RERailworld__/graphics/entity/wagon/cargo-wagon-uranium-r2-sheet-3.png"
        },
        line_length = 4,
        lines_per_file = 4,
        shift = {0.42, -1.125}
    }}}},
    wheels = standard_train_wheels,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound = { sound = { filename = "__base__/sound/train-wheels.ogg", volume = 0.5 }, match_volume_to_activity = true, },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 }
}
})

-- Railway R1
local cwag_r1_entity = table.deepcopy(data.raw['cargo-wagon']['cargo-wagon-r2'])
cwag_r1_entity.name = "cargo-wagon-r1"
cwag_r1_entity.icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r1.png"
cwag_r1_entity.icon_size = 32
cwag_r1_entity.inventory_size = 150
cwag_r1_entity.minable = {mining_time = 1, result = "cargo-wagon-r1"}
cwag_r1_entity.max_health = 1000
cwag_r1_entity.collision_box = {{-0.6, -2.4}, {0.6, 2.4}}
cwag_r1_entity.selection_box = {{-1.0, -2.7}, {1, 3.2}}
cwag_r1_entity.connection_distance = 3
cwag_r1_entity.joint_distance = 4
cwag_r1_entity.weight = 1500
cwag_r1_entity.max_speed = 2.4    --216 * 2.4 = 518,4 km/h
cwag_r1_entity.braking_force = 20
cwag_r1_entity.friction_force = 0.25
cwag_r1_entity.air_resistance = 0.00375
cwag_r1_entity.energy_per_hit_point = 5
cwag_r1_entity.vertical_selection_shift = -0.5
cwag_r1_entity.pictures.rotated.layers = {{
    priority = "very-low",
    width = 256,
    height = 256,
    back_equals_front = true,
    direction_count = 64,
    filename = "__RERailworld__/graphics/entity/wagon/cargo-wagon-r1.png",
    line_length = 8,
    lines_per_file = 8,
    shift = {0.42, -1.125}
}}
cwag_r1_entity.rail_category = "regular"

data:extend({cwag_r1_entity})
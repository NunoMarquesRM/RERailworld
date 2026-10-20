function drive_over_tie()
    return {
        type = "play-sound",
        sound = sound_variations("__base__/sound/train-tie", 6, 0.4,
            {
                volume_multiplier("main-menu", 2.4),
                volume_multiplier("driving", 1.3)
            }
        )
    }
end

standard_train_wheels = {
    rotated = util.sprite_load("__base__/graphics/entity/train-wheel/train-wheel",
        {
            priority = "very-low",
            direction_count = 256,
            scale = 0.5,
            shift = util.by_pixel(0, 8),
            usage = "train"
        }
    )
}

sounds = {
    ["train-pickup"] = {
        filename = "__base__/sound/item/locomotive-inventory-pickup.ogg",
        volume = 0.4,
        aggregation = {max_count = 1, remove = true}
    },
    ["metal-large-drop"] = {
        filename = "__base__/sound/item/metal-large-inventory-move.ogg",
        volume = 0.7,
        aggregation = {max_count = 1, remove = true}
    },
    ["fluid-pickup"] = {
        filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
        volume = 0.5,
        aggregation = {max_count = 1, remove = true}
    },
    ["fluid-drop"] = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
        aggregation = {max_count = 1, remove = true}
    },
    ["electric-large-pickup"] = {
        filename = "__base__/sound/item/electric-large-inventory-move.ogg",
        volume = 0.7,
        aggregation = {max_count = 1, remove = true}
    },
    ["electric-large-drop"] = {
        filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
        volume = 0.7,
        aggregation = {max_count = 1, remove = true}
    }
}

function create_item(name, icon, icon_size, subgroup, order, stack_size, pick_sound, drop_sound)
    return {
        type = "item-with-entity-data",
        name = name,
        icon = "__RERailworld__/graphics/icons/" .. icon .. ".png",
        icon_size = icon_size,
        subgroup = subgroup,
        order = order,
        place_result = name,
        stack_size = stack_size,
        pick_sound = pick_sound,
        drop_sound = drop_sound
    }
end

function create_recipe(name, energy_required, enabled, ingredients, results, categories)
    return {
        type = "recipe",
        name = name,
        energy_required = energy_required,
        enabled = enabled,
        ingredients = ingredients,
        results = results,
        categories = categories
    }
end

function create_item_fuel(name, icon, icon_size, subgroup, order, stack_size, value, acceleration, top_speed)
    return {
        type = "item",
        name = name,
        icon = "__RERailworld__/graphics/icons/" .. icon .. ".png",
        icon_size = icon_size,
        subgroup = subgroup,
        order = order,
        stack_size = stack_size,
        fuel_value = value,
        fuel_acceleration_multiplier = acceleration,
        fuel_categories = {"extreme-fuel-r1"},
        fuel_top_speed_multiplier = top_speed
    }
end

function create_cargo_wagon(options)
    return {
        type = "cargo-wagon",
        name = options.name,
        icon = options.icon,
        icon_size = 32,
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
        inventory_size = options.inventory_size,
        minable = {mining_time = 1, result = options.name},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        max_health = options.max_health or 2000,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
        selection_box = {{-1.0, -2.7}, {1, 3.2}},
        connection_distance = 3,
        joint_distance = 4,
        weight = options.weight or 2000,
        max_speed = options.max_speed or 40, -- 216*40 = 8640 km/h
        braking_force = options.braking_force or 500,
        friction_force = options.friction_force or 0.0000001,
        air_resistance = options.air_resistance or 0.0000001,
        energy_per_hit_point = 5,
        resistances = options.resistances,
        vertical_selection_shift = -0.5,
        pictures = options.pictures,
        wheels = standard_train_wheels,
        rail_category = "regular",
        drive_over_tie_trigger = drive_over_tie(),
        tie_distance = 50,
        working_sound = {
            sound = {filename = "__base__/sound/train-wheels.ogg", volume = 0.5},
            match_volume_to_activity = true
        },
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
        close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
        sound_minimum_speed = 0.5,
        vehicle_impact_sound = {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0}
    }
end

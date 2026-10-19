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

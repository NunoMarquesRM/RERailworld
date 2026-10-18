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

function create_item(name, icon, icon_size, subgroup, order, stack_size)
    return {
        type = "item",
        name = name,
        icon = "__RERailworld__/graphics/icons/" .. icon .. ".png",
        icon_size = icon_size,
        subgroup = subgroup,
        order = order,
        place_result = name,
        stack_size = stack_size
    }
end

function create_recipe(name, energy_required, enabled, ingredients, results)
    return {
        type = "recipe",
        name = name,
        energy_required = energy_required,
        enabled = enabled,
        ingredients = ingredients,
        results = results
    }
end
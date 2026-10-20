data:extend({
-- Item
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
-- Recipe
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
-- Entity
    create_cargo_wagon({ name = "cargo-wagon-r1",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r1.png",
        inventory_size = 150,
        resistances = {{type = "impact", decrease = 50, percent = 60}},
        max_health = 1000,
        weight = 1500,
        max_speed = 2.4, -- 216*2.4 = 518,4 km/h
        braking_force = 20,
        friction_force = 0.25,
        air_resistance = 0.00375,
        energy_per_hit_point = 5,
        pictures = {rotated = {layers = {{
            priority = "very-low",
            width = 256,
            height = 256,
            back_equals_front = true,
            direction_count = 64,
            filenames = {"__RERailworld__/graphics/entity/wagon/cargo-wagon-r1.png"},
            line_length = 8,
            lines_per_file = 8,
            shift = {0.42, -1.125}
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-r2",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-r2.png",
        inventory_size = 250,
        resistances = {{type = "impact", decrease = 50, percent = 60}},
        pictures = {rotated = {layers = {{
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
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-copper-r1",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-copper-r1.png",
        inventory_size = 260,
        pictures = {rotated = {layers = {{
            priority = "very-low",
            width = 256,
            height = 256,
            back_equals_front = true,
            direction_count = 64,
            filenames = {"__RERailworld__/graphics/entity/wagon/cargo-wagon-copper-r1.png"},
            line_length = 8,
            lines_per_file = 8,
            shift = {0.42, -1.125}
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-iron-r1",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-iron-r1.png",
        inventory_size = 260,
        pictures = {rotated = {layers = {{
            priority = "very-low",
            width = 256,
            height = 256,
            back_equals_front = true,
            direction_count = 64,
            filenames = {"__RERailworld__/graphics/entity/wagon/cargo-wagon-iron-r1.png"},
            line_length = 8,
            lines_per_file = 8,
            shift = {0.42, -1.125}
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-coal-r1",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-coal-r1.png",
        inventory_size = 260,
        resistances = {{type = "impact", decrease = 50, percent = 60}},
        pictures = {rotated = {layers = {{
            priority = "very-low",
            width = 256,
            height = 256,
            back_equals_front = true,
            direction_count = 64,
            filename = "__RERailworld__/graphics/entity/wagon/cargo-wagon-coal-r1.png",
            line_length = 8,
            lines_per_file = 8,
            shift = {0.42, -1.125}
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-stone-r1",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-stone-r1.png",
        inventory_size = 260,
        pictures = {rotated = {layers = {{
            priority = "very-low",
            width = 512,
            height = 512,
            scale = 0.5,
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
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-stone-r2",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-stone-r2.png",
        inventory_size = 260,
        pictures = {rotated = {layers = {{
            priority = "very-low",
            width = 512,
            height = 512,
            scale = 0.5,
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
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-uranium-r1",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-uranium-r1.png",
        inventory_size = 260,
        resistances = {
            {type = "physical", decrease = 15, percent = 30},
            {type = "impact", decrease = 50, percent = 60},
            {type = "acid", decrease = 10, percent = 20}
        },
        pictures = {rotated = {layers = {{
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
        }}}}
    }),
    create_cargo_wagon({ name = "cargo-wagon-uranium-r2",
        icon = "__RERailworld__/graphics/icons/wagon/cargo-wagon-uranium-r2.png",
        inventory_size = 260,
        resistances = {
            {type = "physical", decrease = 15, percent = 30},
            {type = "impact", decrease = 50, percent = 60},
            {type = "acid", decrease = 10, percent = 20}
        },
        pictures = {rotated = {layers = {{
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
        }}}}
    })
})
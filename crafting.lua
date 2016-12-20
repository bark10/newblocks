minetest.register_craft(
   {
      output = "newblocks:wardrobe",
      recipe = { { "group:wood", "group:stick", "group:wood" },
                 { "group:wood", "group:wool",  "group:wood" },
                 { "group:wood", "group:wool",  "group:wood" } },
})

-- Recipes for bricks
minetest.register_craft({
        output = "newblocks:cobble_brick",
        recipe = {
                {"newblocks:vinegar","newblocks:cobble_weathered_brick"},
        },
})
minetest.register_craft({
        output = "newblocks:cobble_weathered_brick",
        recipe = {
                {"newblocks:vinegar","newblocks:cobble_brick"},
        },
})
minetest.register_craft({
        output = "newblocks:cobble_brick",
        recipe = {
                {"newblocks:vinegar","default:brick"},
        },
})
minetest.register_craft({
        output = "newblocks:cobble_weathered_brick",
        recipe = {
                {"newblocks:vinegar","default:brick"},
        },
})


-- Reecipes for Vinegar
minetest.register_craft({
	output = "newblocks:vinegar",
	recipe = {
		{"food:rainbow_juice"},
	},
})
minetest.register_craft({
	output = "newblocks:vinegar",
	recipe = {
		{"food:orange_juice"},
	},
})
minetest.register_craft({
	output = "newblocks:vinegar",
	recipe = {
		{"food:apple_juice"},
	},
})
minetest.register_craft({
	output = "newblocks:vinegar",
	recipe = {
		{"food:rainbow_juice"},
	},
})

-- Recipe for Iron Floor
minetest.register_craft({
	output = "newblocks:iron_bar_floor 3",
	recipe = {
		{"xpanes:bar", "xpanes:bar", "xpanes:bar",},
	},
})

-- Recipe for xpanes:bar
minetest.register_craft({
	output = "xpanes:bar 3",
	recipe = {
		{"newblocks:iron_bar_floor", "newblocks:iron_bar_floor", "newblocks:iron_bar_floor",},
	},
})


-- Recipe for Steel Wool
minetest.register_craft({
	output = "newblocks:steel_wool 6",
	recipe = {
		{"default:steel_ingot"},
	},
})

-- Recipe for Steel Wool Vinegar Solution
minetest.register_craft({
	output = "newblocks:steel_wool_vinegar_solution",
	recipe = {
		{"newblocks:vinegar", "newblocks:steel_wool",},
	}
})

-- Recipe for regular graywood
minetest.register_craft({
	output = "newblocks:graywood",
	recipe = {
		{'default:wood', 'newblocks:steel_wool_vinegar_solution',},
	}
})
-- Recipe for Light Graywood
minetest.register_craft({
	output = "newblocks:graywood_pine",
	recipe = {
		{'default:pine_wood', 'newblocks:steel_wool_vinegar_solution',},
	}
})
-- Recipe for Dark Graywood
minetest.register_craft({
	output = "newblocks:graywood_jungle",
	recipe = {
		{'default:junglewood', 'newblocks:steel_wool_vinegar_solution',},
	}
})


-- Recipe for Salt Fragments
minetest.register_craft({
	output = "newblocks:salt_fragments 9",
	recipe = {
		{'caverealms:salt_crystal',},
	}
})

-- Recipe for Anhydrite
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "newblocks:anhydrite",
	recipe = "newblocks:salt_fragments",
})

-- Recipe for Smoked Glass Fragments
minetest.register_craft({
	output = "newblocks:smoked_glass_fragments",
	recipe = {
		{"vessels:glass_fragments","caverealms:coal_dust"},
	}
})

-- Recipe for Smoked Glass
minetest.register_craft({
	type = "cooking",
	cooktime = 10,
	output = "newblocks:smoked_glass",
	recipe = "newblocks:smoked_glass_fragments",
})


-- Recipe for Iron Stone
minetest.register_craft({
	type = "cooking",
	cooktime = 5,
	output = "moreblocks:iron_stone",
	recipe = "newblocks:iron_stone_cobble",
})

-- Recipe for Plaster Block
minetest.register_craft({
	output = "newblocks:plaster 10",
	recipe = {
		{"bucket:bucket_water", "newblocks:anhydrite",},
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},

-- Recipe for glass fragments
minetest.register_craft({
	output = "vessels:glass_fragments 9",
	recipe = {
		{"default:glass"},
	}
}),


--Recipe for Powered Torch
minetest.register_craft({
	output = 'newblocks:powered_torch 4',
	recipe = {
		{"default:coal_lump"},
		{"group:stick"},
		{"default:mese_crystal"},
	}
	})
})

-- Recipe for Acacia Floorboard
minetest.register_craft({
	output = "newblocks:floorboard 2",
	recipe = {
		{"default:acacia_wood",},
		{"default:acacia_wood",},
		{"default:acacia_wood",},
	},
})

-- Acacia Floorboard Connector
minetest.register_craft({
	output = "newblocks:floorboard_connector",
	recipe = {
		{"newblocks:floorboard",},
		}
})




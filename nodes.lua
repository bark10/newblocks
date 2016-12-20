minetest.register_node("newblocks:dry_leaves", {
	description = "Dry Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"newblocks_dry_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'newblocks:dry_leaves'},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

-- White light
minetest.register_node("newblocks:white_lamp", {
	description = "White Lamp",
	use_texture_alpha = false,
	tiles = {"newblocks_light.png"},
	is_ground_content = false,
	drawtype = "glasslike",
	light_source = 10,
	sunlight_propagates = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_glass_defaults(),
})

-- Graywood
minetest.register_node("newblocks:graywood", {
	description = "Graywood",
tiles = {
		"newblocks_graywood.png",
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),

})
minetest.register_node("newblocks:graywood_pine", {
	description = "Light Graywood",
tiles = {
		"newblocks_graywood_pine.png",
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),

})
minetest.register_node("newblocks:graywood_jungle", {
	description = "Dark Graywood",
tiles = {
		"newblocks_graywood_jungle.png",
	},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),

})

-- Wardrobe (decorative)
minetest.register_node("newblocks:wardrobe", {
      description = "Wardrobe",
      paramtype2 = "facedir",
      tiles = {
                 "default_wood.png",
                 "default_wood.png",
                 "default_wood.png",
                 "default_wood.png",
                 "default_wood.png",
                 "wardrobe_wardrobe_front.png"
              },
--      inventory_image = "wardrobe_wardrobe_front.png",
      sounds = default.node_sound_wood_defaults(),
      groups = { choppy = 3, oddly_breakable_by_hand = 2, flammable = 3 },
   });

-- Iron Bar Floor
minetest.register_node("newblocks:iron_bar_floor", {
	description = "Iron Bars (floor)",
	tiles = {
		"newblocks_iron_bar_floor.png",
		"newblocks_iron_bar_floor.png",
		"blank.png",
		"blank.png",
		"blank.png",
		"blank.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, stone = 2},	
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.130000, -0.5, 0.5, 0.220000, 0.5}, -- NodeBox1
		}
	}
})

-- Plaster Block
minetest.register_node("newblocks:plaster", {
	description = "Plaster Block",
	tiles = {
		"newblocks_plaster.png",
	},
	groups = {cracky = 1, stone = 2}
})

minetest.register_node("newblocks:powered_torch", {
	description = "Powered Torch",
	drawtype = "torchlike",
	tiles = {
		{
			name = "newblocks_powered_torch_on_floor.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			},
		},
		{
			name="newblocks_powered_torch_on_ceiling.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			},
		},
		{
			name="newblocks_powered_torch.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0
			},
		},
	},
	inventory_image = "newblocks_powered_torch_on_floor.png",
	wield_image = "newblocks_powered_torch_on_floor.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	is_ground_content = false,
	walkable = false,
	light_source = default.LIGHT_MAX,
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.1, 0.5 - 0.6, -0.1, 0.1, 0.5, 0.1},
		wall_bottom = {-0.1, -0.5, -0.1, 0.1, -0.5 + 0.6, 0.1},
		wall_side = {-0.5, -0.3, -0.1, -0.5 + 0.3, 0.3, 0.1},
	},
	groups = {choppy = 2, dig_immediate = 3, flammable = 1, attached_node = 1},
	legacy_wallmounted = true,
})


minetest.register_node("newblocks:floorboard_connector", {
	description = "Acacia Floorboard Connector",
	tiles = {"newblocks_floorboard_connector.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("newblocks:floorboard", {
	description = "Acacia Floorboard",
	tiles = {"newblocks_floorboard.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("newblocks:acacia_panel", {
	description = "Acacia Wood Panel",
	tiles = {"newblocks_acacia_panel.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("newblocks:aspen_panel", {
	description = "Aspen Wood Panel",
	tiles = {"newblocks_acacia_panel.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("newblocks:aspen_panel", {
	description = "Junglewood Panel",
	tiles = {"newblocks_junglewood_panel.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("newblocks:pine_panel", {
	description = "Pinewood Panel",
	tiles = {"newblocks_pine_panel.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})
minetest.register_node("newblocks:wood_panel", {
	description = "Wood Panel",
	tiles = {"newblocks_wood_panel.png"},
	groups = {choppy=2,oddly_breakable_by_hand=2,flammable=3,wood=1},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("newblocks:cobble_brick", {
	description = "Cobblestone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"newblocks_cobble_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("newblocks:ironstone_cobble", {
	description = "Ironstone Cobble",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"newblocks_ironstone_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("newblocks:cobble_weathered_brick", {
	description = "Weathered Cobblestone Brick",
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"newblocks_cobble_weathered_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("newblocks:smoked_glass", {
	description = "Smoked Glass",
	paramtype2 = "facedir",
	use_texture_alpha = true,
	place_param2 = 0,
	tiles = {"newblocks_glossy_tile.png"},
	is_ground_content = false,
	drawtype = "glasslike",
	sunlight_propagates = true,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("newblocks:skullbone", {
    description = "Skull Bone",
      tiles = {
        {
            name = "newblocks_headbone.png",
            animation = {
                type     = "vertical_frames",
                aspect_w = 16,
                aspect_h = 16,
                length   = 2.0
            }
        }
    },
    paramtype2 = "facedir",
    groups = {dig_immediate=2},
    light_source = 14,
    sounds = default.node_sound_dirt_defaults({
        footstep = {name="default_gravel_footstep", gain=0.5},
        dug = {name="default_gravel_footstep", gain=1.0},
    }),
 
})

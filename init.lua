-- This mod adds "isolated" tubes to Pipeworks
-- these are tubes that connect only to the standard pipes or to their own colors
-- but not to each other (purple to purple or regular, orange to orange or regular, nothing else)
--
-- This mod is a work in progress
--
-- Written by Kacey and VanessaE
--

local iso_purple_noctr_textures={"moretubes_iso_purple_tube_noctr.png","moretubes_iso_purple_tube_noctr.png","moretubes_iso_purple_tube_noctr.png","moretubes_iso_purple_tube_noctr.png","moretubes_iso_purple_tube_noctr.png","moretubes_iso_purple_tube_noctr.png"}
local iso_purple_textures={"moretubes_iso_purple_tube_plain.png","moretubes_iso_purple_tube_plain.png","moretubes_iso_purple_tube_plain.png","moretubes_iso_purple_tube_plain.png","moretubes_iso_purple_tube_plain.png","moretubes_iso_purple_tube_plain.png"}
local iso_purple_end_textures={"moretubes_iso_purple_tube_end.png","moretubes_iso_purple_tube_end.png","moretubes_iso_purple_tube_end.png","moretubes_iso_purple_tube_end.png","moretubes_iso_purple_tube_end.png","moretubes_iso_purple_tube_end.png"}
local iso_purple_short_texture="moretubes_iso_purple_tube_short.png"
local iso_purple_inv_texture="moretubes_iso_purple_tube_inv.png"

register_tube("moretubes:iso_purple_tube","Purple isolated pneumatic tube segment",iso_purple_textures,iso_purple_noctr_textures,iso_purple_end_textures,iso_purple_short_texture,iso_purple_inv_texture)

local iso_orange_noctr_textures={"moretubes_iso_orange_tube_noctr.png","moretubes_iso_orange_tube_noctr.png","moretubes_iso_orange_tube_noctr.png","moretubes_iso_orange_tube_noctr.png","moretubes_iso_orange_tube_noctr.png","moretubes_iso_orange_tube_noctr.png"}
local iso_orange_textures={"moretubes_iso_orange_tube_plain.png","moretubes_iso_orange_tube_plain.png","moretubes_iso_orange_tube_plain.png","moretubes_iso_orange_tube_plain.png","moretubes_iso_orange_tube_plain.png","moretubes_iso_orange_tube_plain.png"}
local iso_orange_end_textures={"moretubes_iso_orange_tube_end.png","moretubes_iso_orange_tube_end.png","moretubes_iso_orange_tube_end.png","moretubes_iso_orange_tube_end.png","moretubes_iso_orange_tube_end.png","moretubes_iso_orange_tube_end.png"}
local iso_orange_short_texture="moretubes_iso_orange_tube_short.png"
local iso_orange_inv_texture="moretubes_iso_orange_tube_inv.png"

register_tube("moretubes:iso_orange_tube","orange isolated pneumatic tube segment",iso_orange_textures,iso_orange_noctr_textures,iso_orange_end_textures,iso_orange_short_texture,iso_orange_inv_texture)

minetest.register_craft( {
	output = "moretubes:iso_purple_tube 12",
	recipe = {
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
                { "group:dye,basecolor_purple", "group:dye,basecolor_purple", "group:dye,basecolor_purple" },
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "moretubes:iso_purple_tube 12",
	recipe = {
		"pipeworks:tube",
		"pipeworks:tube",
		"pipeworks:tube",
		"pipeworks:tube",
        "group:dye,basecolor_purple",
	},
})
minetest.register_craft( {
	output = "moretubes:iso_purple_tube 1",
	recipe = {
	        { "group:dye,basecolor_purple" },
                { "pipeworks:tube" },
	        { "group:dye,basecolor_purple" }
	},
})
minetest.register_craft( {
	output = "moretubes:iso_orange_tube 12",
	recipe = {
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
                { "group:dye,basecolor_orange", "group:dye,basecolor_orange", "group:dye,basecolor_orange" },
	        { "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "moretubes:iso_orange_tube 12",
	recipe = {
		"pipeworks:tube",
		"pipeworks:tube",
		"pipeworks:tube",
		"pipeworks:tube",
        "group:dye,basecolor_orange",
	},
})

minetest.register_craft( {
	output = "moretubes:iso_orange_tube 1",
	recipe = {
	        { "group:dye,basecolor_orange" },
            { "pipeworks:tube" },
	        { "group:dye,basecolor_orange" }
	},
})
local modpath = minetest.get_modpath("moretubes")
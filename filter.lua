technic.register_alloy_recipe("default:mese_crystal",  2, "default:diamond",      2, "moretubes:bpf",          1)

minetest.register_craftitem("moretubes:bpf", {
	description = "Basic Processer Frame",
	inventory_image = "moretubes_bpf.png",
})

minetest.register_craft({
	type = "cooking",
	output = "moretubes:bpu",
	recipe = "moretubes:bpf",
})

minetest.register_craftitem("moretubes:bpu", {
	description = "Basic Processer Unit",
	inventory_image = "moretubes_bpu.png",
})

technic.register_alloy_recipe("homedecor:plastic_sheeting",  2, "default:diamond",      2, "moretubes:diamond_sheeting",          4)

minetest.register_craftitem("moretubes:diamond_sheeting", {
	description = "Diamond Sheeting",
	inventory_image = "moretubes_diamond_sheeting.png",
})


minetest.register_craftitem("doughnut:dough", {
	description = "Dough",
	inventory_image = "dough.png",
	on_use = function(itemstack, user)
		minetest.chat_send_player(user:get_player_name(), "ugh, you shouldn't eat raw dough")
	end
})
minetest.register_craftitem("doughnut:nut", {
	description = "Nut",
	inventory_image = "nut.png",
	on_use = minetest.item_eat(4)
})
minetest.register_craftitem("doughnut:doughnut", {
	description = "Doughnut",
	inventory_image = "dough.png^nut.png",
	on_use = minetest.item_eat(20)
})
minetest.register_craft({
	output = "doughnut:nut",
	recipe = {
		{"", "", ""},
		{"", "default:dirt", ""},
		{"", "", ""},
	}
})
minetest.register_craft({
	output = "doughnut:dough",
	recipe = {
		{"", "default:sand", ""},
		{"default:sand", "default:dirt", "default:sand"},
		{"", "default:sand", ""},
	}
})
minetest.register_craft({
	output = "doughnut:doughnut",
	type = "shapeless",
	recipe = {"doughnut:nut", "doughnut:dough",},
})

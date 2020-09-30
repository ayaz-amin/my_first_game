extends Node

var ItemClass = preload("res://Nodes/ItemNodes/HealthPotion.tscn")
var item = null

func _ready():
	if randi() % 3 == 0:
		item = ItemClass.instance()
		add_child(item)

func pick_from_slot():
	remove_child(item)
	var inventory_node = find_parent("Inventory")
	inventory_node.add_child(item)
	item = null

func insert_into_slot(new_item):
	item = new_item
	item.position = Vector2(0, 0)
	var inventory_node = find_parent("Inventory")
	inventory_node.remove_child(item)
	add_child(item)

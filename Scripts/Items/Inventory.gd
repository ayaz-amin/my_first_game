extends Node2D

const SlotClass = preload("res://Scripts/Items/InventorySlot.gd")
onready var inv_slot = $HiddenStorage
var held_item = null

func _ready():
	pass

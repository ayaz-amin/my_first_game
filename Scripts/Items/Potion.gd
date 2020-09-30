extends Node2D

export(String) var potion_name
export(String) var potion_texture
export(int) var health
export(int) var precision
export(int) var strength
export(int) var speed
export(int) var regeneration


func _ready():
	$TextureRect.texture = load(potion_texture)

extends Node

var current_scene : Node2D

func _ready():
	randomize()
	go_to_title_scene()
	
func go_to_title_scene():
	var title_scene = ResourceLoader.load("res://scenes/title_scene/title_scene.tscn")
	change_scene_to_file(title_scene)
	
func change_scene_to_file(resource : Resource):
	var node = resource.instantiate()

	for child in get_children():
		remove_child(child)
		child.queue_free()
	add_child(node)

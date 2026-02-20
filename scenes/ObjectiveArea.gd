extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Level 1 Complete!")
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://scenes/NextLevel.tscn")
		
	if (body.name == "GreenShip"):
		print("Level 2 Complete!")

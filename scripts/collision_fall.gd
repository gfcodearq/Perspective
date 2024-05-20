extends Area

func _on_collision_fall_area_entered(area):
	if area.is_in_group("collision_player"):
		print("fall")
		Signals.emit_signal("fall")

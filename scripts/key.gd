extends Spatial


func _on_collision_key_area_entered(area):
	if area.is_in_group("collision_player"):
		print("key")
		Signals.emit_signal("key")
		queue_free()

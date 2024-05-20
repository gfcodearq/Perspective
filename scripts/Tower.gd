extends Spatial



func _on_collision_tower_area_entered(area):
	if area.is_in_group("collision_player"):
		print("castle")
		Signals.emit_signal("castle")

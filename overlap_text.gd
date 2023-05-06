extends Control


var is_pressed = false


func _on_texture_rect_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		is_pressed = event.is_pressed()
	elif is_pressed:
		$TextureRect.position += event.relative


func _on_texture_rect_2_gui_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		is_pressed = event.is_pressed()
	elif is_pressed:
		$TextureRect2.position += event.relative


func _on_area_2d_area_entered(area):
	area.get_parent().hide()


func _on_area_2d_area_exited(area):
	area.get_parent().show()

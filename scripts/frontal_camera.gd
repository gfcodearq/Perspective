extends Camera

#export var smoothing = 1
#
#var objetivo = null
#var posicion : Vector3
#var direccion : Vector3
#var recorrido = []
#
#func _ready() -> void:
#
#	objetivo = get_parent().get_node("Player").translation
#	posicion = self.translation
#	direccion = posicion - objetivo
#
#func _physics_process(delta: float) -> void:
#	objetivo = get_parent().get_node("Player").translation
#	recorrido.append(objetivo + direccion)
#	if recorrido.size() >= smoothing:
#		posicion = recorrido[0]
#		self.translation = posicion
#		recorrido.remove(0)

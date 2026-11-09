extends Node

# Declara la señal aquí arriba para que Godot la reconozca
signal puntos_actualizados

var produccion: int = 75
var ambiente: int = 82
var comunidad: int = 90

func modificar_puntos(tipo: String, cantidad: int):
	if tipo == "produccion":
		produccion = clamp(produccion + cantidad, 0, 100)
	elif tipo == "ambiente":
		ambiente = clamp(ambiente + cantidad, 0, 100)
	elif tipo == "comunidad":
		comunidad = clamp(comunidad + cantidad, 0, 100)
	
	emit_signal("puntos_actualizados")
	print("Estado actual -> Prod: %d | Amb: %d | Com: %d" % [produccion, ambiente, comunidad])

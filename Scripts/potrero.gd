extends Area2D

@export var max_ugg: int = 5  # Límite máximo de vacas permitidas en este potrero
var vacas_actuales: int = 0

func _on_body_entered(body):
	if body.name.begins_with("Vaca"):
		vacas_actuales += 1
		verificar_capacidad()

func _on_body_exited(body):
	if body.name.begins_with("Vaca"):
		vacas_actuales -= 1
		verificar_capacidad()

func verificar_capacidad():
	if vacas_actuales > max_ugg:
		print("¡Alerta! Exceso de ganado en el potrero. Deterioro del suelo y pérdida de peso.")
		# Aquí puedes restar puntos de producción o ambiente llamando a tu GameManager

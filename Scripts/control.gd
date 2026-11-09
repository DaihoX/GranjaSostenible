extends CanvasLayer

# Actualizamos la ruta pasando por VBoxContainer
@onready var lbl_produccion = $Control/VBoxContainer/LabelProduccion
@onready var lbl_ambiente = $Control/VBoxContainer/LabelAmbiente
@onready var lbl_comunidad = $Control/VBoxContainer/LabelComunidad

func _ready():
	# Asegúrate de haber declarado 'signal puntos_actualizados' en GameManager.gd
	GameManager.connect("puntos_actualizados", actualizar_textos)
	actualizar_textos()

func actualizar_textos():
	lbl_produccion.text = "Producción: " + str(GameManager.produccion) + "/100"
	lbl_ambiente.text = "Ambiente: " + str(GameManager.ambiente) + "/100"
	lbl_comunidad.text = "Comunidad: " + str(GameManager.comunidad) + "/100"

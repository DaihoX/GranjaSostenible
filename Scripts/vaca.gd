extends CharacterBody2D

@export var velocidad: float = 40.0
var direccion: Vector2 = Vector2.ZERO
@onready var temporizador: Timer = $Timer # Asegúrate de añadir un nodo Timer como hijo de la Vaca

func _ready():
	cambiar_direccion()
	# Si no tienes un Timer añadido, puedes usar un temporizador por código:
	var timer = Timer.new()
	timer.wait_time = 3.0
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)

func _physics_process(delta):
	velocity = direccion * velocidad
	move_and_slide()

func _on_timer_timeout():
	cambiar_direccion()

func cambiar_direccion():
	# Elige una dirección aleatoria (arriba, abajo, izquierda, derecha o quieta)
	var opciones = [Vector2.ZERO, Vector2.LEFT, Vector2.RIGHT, Vector2.UP, Vector2.DOWN]
	direccion = opciones.pick_random()

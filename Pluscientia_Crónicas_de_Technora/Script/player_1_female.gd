extends CharacterBody2D

const velocidad = 150
@onready var player = $".."
@onready var animación = $AnimatedSprite2D

func _physics_process(_delta):
	if Input.is_action_pressed("IZQUIERDA"):
		player.position.x -= velocidad * _delta
		animación.play("Caminar_izquierda2")
	elif Input.is_action_pressed("DERECHA"): 
		player.position.x += velocidad * _delta
		animación.play("Caminar_derecha2")
	elif Input.is_action_pressed("ARRIBA"): 
		player.position.y -= velocidad * _delta
		animación.play("Caminar_arriba2")
	elif Input.is_action_pressed("ABAJO"): 
		player.position.y += velocidad * _delta
		animación.play("Caminar_abajo2")
	else:
		animación.stop()
	

	move_and_slide()

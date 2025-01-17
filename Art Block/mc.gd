extends CharacterBody2D

@onready var _animated_sprite = $"mc sprites"

signal levelend

func _process(_delta):
	
	
	if Input.is_action_pressed("up"):
		_animated_sprite.play("Jump")
	elif Input.is_action_pressed("right"):
		_animated_sprite.play("Walk")
	elif Input.is_action_pressed("left"):
		_animated_sprite.play("WalkL")
	elif Input.is_action_pressed("pink") or Input.is_action_pressed("blue") or Input.is_action_pressed("yellow"):
		_animated_sprite.play("Colour")
	elif Input.is_action_pressed("down"):
		_animated_sprite.play("Fall")
	else:
		_animated_sprite.play("Idle")
	
	if Input.is_action_just_pressed("enter"):
		emit_signal("levelend")
		
	if Input.is_action_just_pressed("right") or Input.is_action_just_pressed("left"):
		$WalkSFX.play()
		if Input.is_action_just_released("right") or Input.is_action_just_released("left"):
			$WalkSFX.stop()
			
	
		


const speed = 1000
const JUMP_VELOCITY = -900


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 1000
#ProjectSettings.get_setting("physics/2d/default_gravity")

const acc = 50
const friction = 70

func _physics_process(delta):
		
		
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("up") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		

	move_and_slide()
	
	
	for index in get_slide_collision_count():
		var collision := get_slide_collision(index)
		var body := collision.get_collider()
		if body.name == "LevelEND":
			emit_signal("levelend")
			print("LevelEnded")
		
	

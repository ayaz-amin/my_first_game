extends KinematicBody2D

const SPEED = 50
var velocity = Vector2.ZERO

enum direction_enum {
	UP,
	DOWN,
	RIGHT,
	LEFT
}

var direction = direction_enum.DOWN

func _physics_process(_delta):
	if Input.is_action_pressed("ui_up"):
		direction = direction_enum.UP
		velocity = Vector2(0, -SPEED)
		$AnimatedSprite.play("MoveUp")
		velocity = move_and_slide(velocity)

	elif Input.is_action_pressed("ui_down"):
		direction = direction_enum.DOWN
		velocity = Vector2(0, SPEED)
		$AnimatedSprite.play("MoveDown")
		velocity = move_and_slide(velocity)

	elif Input.is_action_pressed("ui_right"):
		direction = direction_enum.RIGHT
		velocity = Vector2(SPEED, 0)
		$AnimatedSprite.play("MoveRight")
		velocity = move_and_slide(velocity)
		
	elif Input.is_action_pressed("ui_left"):
		direction = direction_enum.LEFT
		velocity = Vector2(-SPEED, 0)
		$AnimatedSprite.play("MoveLeft")
		velocity = move_and_slide(velocity)
	
	else:
		velocity = Vector2.ZERO
		match direction:
			direction_enum.DOWN:
				$AnimatedSprite.play("IdleDown")
			direction_enum.UP:
				$AnimatedSprite.play("IdleUp")
			direction_enum.RIGHT:
				$AnimatedSprite.play("IdleRight")
			direction_enum.LEFT:
				$AnimatedSprite.play("IdleLeft")
		velocity = move_and_slide(velocity)

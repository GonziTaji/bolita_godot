extends RigidBody2D

var rotationSpeed = 0 # rads

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.playing = true
	$AnimatedSprite.animation = "default"
	rotationSpeed = randi() % 5 # rads

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _process(delta):
	$AnimatedSprite.rotate(rotationSpeed*delta)

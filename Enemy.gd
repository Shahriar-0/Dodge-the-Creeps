extends RigidBody2D

func _ready():
	var types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(types[randi() % types.size()])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
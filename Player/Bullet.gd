extends KinematicBody2D

var damage = 1
var speed = 500
var velocity

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0, -speed).rotated(self.rotation)


func _physics_process(delta):
	velocity =  move_and_slide(velocity, Vector2.UP)
	position.x = wrapf(position.x, 0, 1024)
	position.y = wrapf(position.y, 0, 600)


func _on_Timer_timeout():
	queue_free()


func _on_Area2D_body_entered(body):
	queue_free() # Replace with function body.

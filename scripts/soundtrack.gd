extends Node2D


var song0 = load("res://ost/soundtrack/1-07 Lake.mp3")
var song1 = load("res://ost/soundtrack/1-05 Littleroot Town.mp3")

func _ready():
	$AudioStreamPlayer.stream = song0
	$AudioStreamPlayer.play()

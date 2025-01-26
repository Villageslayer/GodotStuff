extends Label

var score = 0

func add_points(points):
	score += points
	text = str(score)

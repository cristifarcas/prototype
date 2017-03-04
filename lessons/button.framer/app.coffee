# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Cristi Farcas"
	twitter: ""
	description: ""


# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

#Framer meetup lasson


background = new BackgroundLayer
		backgroundColor: "white"
		
		
squa = new Layer
	backgroundColor: "red"
	borderRadius: 40
	SHADOWY: 4
	shadowBlur: 48
squa.center()
squa.draggable.enabled = true

#Add constraints: keeping the square within the screen

squa.draggable.constraints =
	width: Screen.width
	height: Screen.height
	
	#if screen not Screen shape will have no constraints on right side
	

#Create state
squa.states.add	
	press:
		scale: 1
		opacity: 0.5
		rotation: -45
		borderRadius: 500
	rest:
		scale: 1
		opacity: 1
		rotation: 0
		borderRadius: 10
		backgroundColor: 'green'

squa.states.animationOptions =
	curve: 'spring(680, 40, 0)'
	
squa.onDragStart ->
	squa.states.switch 'press'
	
squa.onDragEnd ->
		squa.states.switch 'rest'
		

#center the univers

centerX = squa.x
centerY = squa.y

button = new Layer
	backgroundColor: 'violet'
	opacity: 0.5
	width: 126
	height: 126
	borderRadius: 100
	x: Align.center()
	y: 1116
	
button.states.add
	press:
		scale: 2
		opacity: 1
		backgroundColor: 'green'
	
	rest:
		backgroundColor: 'violet'
		opacity: 0.5
		width: 126
		height: 126
		borderRadius: 100
		x: Align.center()
		y: 1110

button.states.animationOptions =
		curve: 'eas-in-out'
		time: 0.1
		
		

button.onTapStart ->
	
	# Animate button
	button.states.switch 'press'

button.onTouchEnd ->
	button.states.switch 'rest'
	

squa.animate
	properties: 
		x:centerX
		y:centerY
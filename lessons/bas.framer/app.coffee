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
	reset:
		scale: 1
		opacity: 1
		rotation: 0
		borderRadius: 10




squa.onDragStart ->
	
	squa.animate
			properties:
				scale: 1
				opacity: 0.5
				rotation: -45
				borderRadius: 500
		curve: 'spring(680, 40, 0)'
		
squa.onDragEnd ->
	
	squa.animate
		properties:
			backgroundColor: "red"
			borderRadius: 40
			SHADOWY: 4
			shadowBlur: 48
			opacity: 1
	
			rotation: 0
		curve: 'spring(680, 40, 0)'
	squa.center()
			
	


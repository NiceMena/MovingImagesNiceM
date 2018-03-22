-----------------------------------------------------------------------------------------
---- Title: MovingObjects
-- Name: Nice Mena
-- Course: ICS2O/3C
-- This program moves a beetleship moving
--across the screenas well as another
--object moving in a different direction.


-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 5

scrollSpeed2 = 7
--background image with width and height
local backgroundImage = display.newImage("Images/background.png" , 225, 175)

-- character image with width and height 
local beetleship = display.newImageRect("Images/beetleship.png" , 200, 200)

---- ghvhyv
beetleship.alpha = 0

-- set the image to be transparent
beetleship.x = display.contentWidth/3
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- output: None
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed2
	-- change the trasnparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end 

-- MoveShip will be called over and over again 
Runtime:addEventListener("enterFrame", MoveShip)

-- character image with width and height
local octopus = display.newImage ("Images/octopus.png" ,1200, 1200)

-- set the image to be transparent
octopus.alpha = 0

octopus.x = display.contentHeight/2
octopus.y = display.contentWidth/2

-- set the octopusss to be backwoods 
octopus:scale (-1, 1)

-- Function: MoveOctopus
-- Input: this function accepts an event listener
-- output: None
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveOctopus( event)
	-- add the scroll speed to the x-value of the Octopus
	octopus.x = octopus.x - scrollSpeed
	-- change the transparency of the octopus every time it moves so that it fades in
	octopus.alpha = octopus.alpha + 0.01
end
Runtime:addEventListener("enterFrame", MoveOctopus)

-- create local variables
local RandomSound

--correct sound
local RandomSound = audio.loadSound( "sounds/bensound-dance.mp3" )
local backgroundMusic

-- setting th
backgroundMusic = audio.play(RandomSound)

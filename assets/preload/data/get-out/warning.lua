-- //INSTURCTIONS//
-- put the songCredit inside the images folder in mods/images and this script in whatever song's data folder you want
-- if the image isn't big enough or too big then do scaleObject('(obj)', (size)')
-- if you wanna make put the sprites in a different folder change the path on line 25/26

-- //CONFIG//
local composer = 'HUDBA_MUSIC' -- change composer name here
local composerIcon = 'hudbaIcon' -- change composer icon here
local bg = 'warning_get_out' -- change the background here

local allowCountdown = false -- don't change this
local confirmed = 0 -- don't change this

function onStartCountdown() -- stop countdown
    if not allowCountdown then
	    return Function_Stop
	end

	if allowCountdown then
	    return Function_Continue
	end
end
function onCreatePost() -- sprite shit
	makeLuaSprite('creditBg', ''..bg, 0, 0)
	makeLuaText('songTextLol', '', 900, 190, 850)
	setTextSize('songTextLol', 30)
	runTimer('textInTimer', 0.3, 1)
	runTimer('fadeTimer', 2.9, 1)

	addLuaSprite('creditBg', true)
	setObjectCamera('creditBg', 'camOther')
	addLuaText('songTextLol')
	setObjectCamera('songTextLol', 'camOther')
end

function onTimerCompleted(tag) -- start countdown and everything fades out
    if tag == 'fadeTimer' then
	    doTweenAlpha('deleteTween', 'creditBg', 0, 0.5, 'backIn')
		doTweenY('textBye', 'songTextLol', 1000, 0.5, 'backIn')
		allowCountdown = true
		startCountdown()
		
	elseif tag == 'textInTimer' then -- text in
	    doTweenY('textYTween', 'songTextLol', 220, 0.8, 'backOut')
		playSound('confirmMenu', 0.4)
	end
end

function onTweenCompleted(tag) -- remove sprites after everything is off screen
    if tag == 'deleteTween' then
	    removeLuaSprite('icon', true)
	    removeLuaSprite('creditBg', true)
		removeLuaText('songTextLol', true)
		
	elseif tag == 'iconYTween' then
	end
end
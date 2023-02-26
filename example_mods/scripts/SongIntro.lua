IntroTagColor = 'FFFFFF'	
by = "MissingID"
ttf = "MissingID"
--actual script
function onCreate()

	if songName  == 'blue-and-sentimental' then
		by =  "by delete that "
        ttf=  'slender.ttf'
		IntroTagWidth = 50		
        IntroTextSize = 50	
        IntroSubTextSize = 50 
        IntroSubSubTextSize = 50  
	end
	if songName  == 'blue-and-sentimental-re' then
		by =  "by delete that"
        ttf =  'slender.ttf'
		IntroTagWidth = 50		
        IntroTextSize = 50	
        IntroSubTextSize = 50 
        IntroSubSubTextSize = 50  
	end
	if songName  == 'forgotten-land' then
		by =  "by delete that"
        ttf = 'tmk.ttf'
		IntroTagWidth = 25		
        IntroTextSize = 35	
        IntroSubTextSize = 20 
        IntroSubSubTextSize = 20  
	end
	if songName  == 'Get-Out' then
		by = "by delete that"
		ttf= 'slender.ttf'
		IntroTagWidth = 10		
        IntroTextSize = 50	
        IntroSubTextSize = 50 
        IntroSubSubTextSize = 50  
	end
	if songName  == 'pixel-horror' then
		by = "by GoddessAwe"
		ttf= 'tmk.ttf'
		IntroTagWidth = 25		
        IntroTextSize = 35	
        IntroSubTextSize = 20 
        IntroSubSubTextSize = 20  
	end
	if songName  == 'Too-Much-Kirby' then
		by = "by GoddessAwe" 
		ttf= 'tmk.ttf'
		IntroTagWidth = 25		
        IntroTextSize = 20	
        IntroSubTextSize = 23 
        IntroSubSubTextSize = 20  
	end

	makeLuaSprite('JukeBoxTag', 'empty', -305-IntroTagWidth, 15)
	makeGraphic('JukeBoxTag', 300+IntroTagWidth, 100, IntroTagColor)
	setObjectCamera('JukeBoxTag', 'other')

	--the box
	makeLuaSprite('JukeBox', 'songIntro', -555-IntroTagWidth, 0)
	scaleObject('JukeBox', 1.2, 1.2);
	setObjectCamera('JukeBox', 'other')
	addLuaSprite('JukeBox', true)
	
	--the text for the "Now Playing" bit
	makeLuaText('JukeBoxText', 'Now Playing:', 300, -305-IntroTagWidth, 30)
	setTextAlignment('JukeBoxText', 'left')
	setObjectCamera('JukeBoxText', 'other')
	setTextSize('JukeBoxText', IntroTextSize)
	setTextFont('JukeBoxText', ttf)
	addLuaText('JukeBoxText')
	
	--text for the song name
	makeLuaText('JukeBoxSubText', songName, 400, -305-IntroTagWidth, 100)
	setTextAlignment('JukeBoxSubText', 'left')
	setObjectCamera('JukeBoxSubText', 'other')
	setTextSize('JukeBoxSubText', IntroSubTextSize)
	setTextFont('JukeBoxSubText', ttf)
	addLuaText('JukeBoxSubText')

	-- Text of da Credit
	makeLuaText('JukeBoxSubSubText', by, 300, -305-IntroTagWidth, 200)
	setTextAlignment('JukeBoxSubSubText', 'left')
	setObjectCamera('JukeBoxSubSubText', 'other')
	setTextSize('JukeBoxSubSubText', IntroSubSubTextSize)
	setTextFont('JukeBoxSubSubText', ttf)
	addLuaText('JukeBoxSubSubText')
end

--motion functions
function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
	doTweenX('MoveInOne', 'JukeBoxTag', 0, 1, 'CircInOut')
	doTweenX('MoveInTwo', 'JukeBox', 0, 1, 'CircInOut')
	doTweenX('MoveInThree', 'JukeBoxText', 0, 1, 'CircInOut')
	doTweenX('MoveInFour', 'JukeBoxSubText', 0, 1, 'CircInOut')
	doTweenX('MoveInFifth', 'JukeBoxSubSubText', 0, 1, 'CircInOut')
	
	runTimer('JukeBoxWait', 3, 1)
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if tag == 'JukeBoxWait' then
		doTweenX('MoveOutOne', 'JukeBoxTag', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutTwo', 'JukeBox', -550, 1.5, 'CircInOut')
		doTweenX('MoveOutThree', 'JukeBoxText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFour', 'JukeBoxSubText', -450, 1.5, 'CircInOut')
		doTweenX('MoveOutFifth', 'JukeBoxSubSubText', -450, 1.5, 'CircInOut')
	end
end
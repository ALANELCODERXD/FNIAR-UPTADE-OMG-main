function onEvent(name, value1, value2)
	if name == "Image Appearance" then
		makeLuaSprite('image', value1, 0, 0);
		addLuaSprite('image', true);
		setObjectCamera('image', 'other');
		runTimer('wait', value2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
	if tag == 'wait' then
		removeLuaSprite('image', true);
	end
end
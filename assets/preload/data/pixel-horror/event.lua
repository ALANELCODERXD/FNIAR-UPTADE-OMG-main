function onUpdate()
    if curStep == 639 then
        setProperty('skyded.visible', false)
        triggerEvent('Image Flash','white','0.01')
    end
    if curStep == 768 then
        setProperty('skyded.visible', true)
        triggerEvent('Image Flash','white','0.01')
    end
end
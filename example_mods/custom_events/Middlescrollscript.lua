start = 0
function onUpdate()
    if start == 1 then

     if curStep == 1 then
        noteTweenAlpha("Note2", 2, 0, 1, ".cubeInOut")
     end
     if curStep == 1 then
        noteTweenAlpha("Note0", 0, 0, 1, ".cubeInOut")
     end
     if curStep == 1 then
	    noteTweenAlpha("Note1", 1, 0, 1, ".cubeInOut")
     end
     if curStep == 1 then
        noteTweenAlpha("Note3", 3, 0, 1, ".cubeInOut")
     end
     if curStep == 1 then
        noteTweenX("Note5", 6, 640, 1, ".cubeInOut")
     end
     if curStep == 1 then
        noteTweenX("Note7", 4, 400, 1, ".cubeInOut")
     end
     if curStep == 1 then
        noteTweenX("Note6", 7, 760, 1, ".cubeInOut")
     end
      if curStep == 1 then
         noteTweenX("Note4", 5, 520, 1, ".cubeInOut")
     end
 end
end
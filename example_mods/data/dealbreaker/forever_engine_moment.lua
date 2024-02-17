function onCreate() -- References the pretty color effect thing from Forever Engine
	
	makeLuaSprite('color1', 'auraTurquoise', 0, -400); -- Pick primary color of effect ("aura<Color>.png" in mods/images)
	setObjectCamera('color1', 'camHud')


	makeLuaSprite('color2', 'auraPurple', 0, -400); -- Pick secondary color of effect
	setObjectCamera('color2', 'camHud')

	addLuaSprite('color1', false);
	addLuaSprite('color2', false);

	setProperty('color1.visible', false)
	setProperty('color2.visible', false)
end

function onStartCountdown() -- Hide the effect on song start and start the tweens

	setProperty('color1.alpha', 0)
	setProperty('color2.alpha', 0.8)

	doTweenAlpha('color1TweenIn', 'color1', 0.8, 2, 'sineInOut')
	doTweenAlpha('color2TweenOut', 'color2', 0, 2, 'sineInOut')

end

function onTweenCompleted(tag) -- Make it loop

	if tag == 'color1TweenOut' then doTweenAlpha('color1TweenIn', 'color1', 0.8, 3, 'sineInOut') end
	if tag == 'color1TweenIn' then doTweenAlpha('color1TweenOut', 'color1', 0, 2, 'sineInOut') end
	if tag == 'color2TweenOut' then doTweenAlpha('color2TweenIn', 'color2', 0.8, 3, 'sineInOut') end
	if tag == 'color2TweenIn' then doTweenAlpha('color2TweenOut', 'color2', 0, 2, 'sineInOut') end

end

function AuraOn() -- Summons the pretty colors yay!

	setProperty('color1.visible', true)
	setProperty('color2.visible', true)

end

function AuraOff() -- Murders the pretty colors grrr

	setProperty('color1.visible', false)
	setProperty('color2.visible', false)

end

function onStepHit() -- Determine on what steps the effect turns on an off on

	if curStep == 256 then

        AuraOn()

    end

	if curStep == 508 then

		AuraOff()

	end

	if curStep == 768 then

		AuraOn()

	end

	if curStep == 1024 then

		AuraOff()

	end
end

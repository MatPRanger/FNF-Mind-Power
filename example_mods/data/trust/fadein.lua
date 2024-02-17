function onCreate()
	
	makeLuaSprite('darkness', 'dark', 0, 0);
	setObjectCamera('darkness', 'camHud')

	addLuaSprite('darkness', false);
end

function onStartCountdown()

	setProperty('darkness.alpha', 1)

end

function onStepHit()

	if curStep == 1 then

		setProperty("camGame.zoom", 2)

	end

	if curStep == 5 then

        doTweenAlpha('fadein', 'darkness', 0, 10, 'linear')
		doTweenZoom('camTween', 'camGame', 0.8, 15, 'quartOut')

    end
end

function onTweenCompleted(tag)

	if tag == 'fadein' then removeLuaSprite('darkness', true)

	end
end

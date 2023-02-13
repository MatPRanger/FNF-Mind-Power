function onCreate()
	--background change things
	makeAnimatedLuaSprite('static', 'static', -850, -800);
	addAnimationByPrefix('static', 'static', 'Static', 30, true);
	scaleObject('static', 0.9, 0.9);
	setScrollFactor('static', 0, 0);
	addLuaSprite('static', false);
	
	makeLuaSprite('occlusion', 'occlusion', -175, -125);
	scaleObject('occlusion', 0.9, 0.9);
	setScrollFactor('occlusion', 0, 0);
	addLuaSprite('occlusion', false)

	makeLuaSprite('dark', 'dark', 0, 0);
	setScrollFactor('dark', 0, 0);
	addLuaSprite('dark', false);
	
	makeLuaSprite('border', 'border', -162, -95);
	scaleObject('border', 0.83, 0.83);
	setScrollFactor('border', 0, 0);
	addLuaSprite('border', false);
	
	makeAnimatedLuaSprite('question', 'question', -100, 125);
	addAnimationByPrefix('question', 'question', 'question', 24, false);
	scaleObject('question', 0.9, 0.9);
	setScrollFactor('question', 0, 0);
	addLuaSprite('question', false);

	setProperty('dark.visible', false) --so that the dark bg cannot be seen
	setProperty('border.visible', false)
	setProperty('question.visible', false)
end

--makes 'occlusion' fade out after the beat hits
function onUpdate(elapsed)
	if getProperty('border.alpha') >= 0.8 then
		doTweenAlpha('border', 'border', 0, 0.3, 'linear');
	end
    if getProperty('occlusion.alpha') >= 0.8 then
        doTweenAlpha('occlusion', 'occlusion', 0, 1, 'linear');
	end
	if getProperty('question.alpha') >= 0.8 then
		doTweenAlpha('question', 'question', 0, 0.3, 'linear');
	end
end

--changes the alpha for 'occlusion' on beat
function onBeatHit()
    if curBeat % 4 == 0 then
        setProperty('occlusion.alpha', 0.8)
    end
	if curBeat % 4 == 1 then
		setProperty('border.alpha', 0.8)
		objectPlayAnimation('question', 'question', true)
		setProperty('question.alpha', 0.8)
	end
	if curBeat % 4 == 3 then
		setProperty('border.alpha', 0.8)
		objectPlayAnimation('question', 'question', true)
		setProperty('question.alpha', 0.8)
	end
end

--stage change event
function onEvent(name,value1,value2)
	if name == 'Play Animation' then --So that the event 'Play Animation' triggers the stage change
		
		if value1 == 'bgstatic' then --If Value 1 is 'bgstatic', change the stage to static
			setProperty('static.visible', true);
			setProperty('occlusion.visible', true);
			setProperty('border.visible', false);
			setProperty('dark.visible', false);
			setProperty('question.visible', false);
		end
		if value1 == 'bgdark' then --If Value 1 is 'bgdark', change the stage to dark
			setProperty('static.visible', false);
			setProperty('occlusion.visible', false);
			setProperty('border.visible', true);
			setProperty('dark.visible', true);
			setProperty('question.visible', true);
		end
	end
end
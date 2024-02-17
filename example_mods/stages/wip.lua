function onCreate()
	
	makeLuaSprite('wip', 'wip', -800, -650);
	setLuaSpriteScrollFactor('wip', 1, 1);
	scaleObject('wip', 0.9, 0.9);

	makeLuaSprite('wip-floor', 'wip-floor', -775, 550);
	setLuaSpriteScrollFactor('wip-floor', 1, 1);
	scaleObject('wip-floor', 1, 1);
	
	addLuaSprite('wip', false);
	addLuaSprite('wip-floor', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
function onCreate()
	
	makeLuaSprite('stageback', 'stageback', -600, -400);
	setLuaSpriteScrollFactor('stageback', 0.7, 0.7);
	scaleObject('stageback', 1, 1);

	addLuaSprite('stageback', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
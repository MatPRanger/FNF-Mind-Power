function onCreate()
	
	makeLuaSprite('grey', 'grey', -300, -300);
	setLuaSpriteScrollFactor('grey', 0, 0);
	scaleObject('grey', 1, 1);
	
	addLuaSprite('grey', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
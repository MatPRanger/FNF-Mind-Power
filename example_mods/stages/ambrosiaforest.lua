function onCreate()
	
	makeLuaSprite('AF-farback', 'AF-farback', -600, -400);
	setLuaSpriteScrollFactor('AF-farback', 0, 0);
	scaleObject('AF-farback', 1, 1);
	
	makeLuaSprite('AF-treefar', 'AF-treefar', -600, -300);
	setLuaSpriteScrollFactor('AF-treefar', 0.2, 0.2);
	scaleObject('AF-treefar', 0.9, 0.9);
	
	makeLuaSprite('AF-treeback', 'AF-treeback', -600, -300);
	setLuaSpriteScrollFactor('AF-treeback', 0.4, 0.4);
	scaleObject('AF-treeback', 0.9, 0.9);
	
	makeLuaSprite('AF-treemid', 'AF-treemid', -600, -300);
	setLuaSpriteScrollFactor('AF-treemid', 0.6, 0.6);
	scaleObject('AF-treemid', 0.9, 0.9);
	
	makeLuaSprite('AF-treefront', 'AF-treefront', -600, -325);
	setLuaSpriteScrollFactor('AF-treefront', 0.8, 0.8);
	scaleObject('AF-treefront', 0.9, 0.9);
	
	makeLuaSprite('AF-ground', 'AF-ground', -800, -400);
	setLuaSpriteScrollFactor('AF-ground', 1, 1);
	scaleObject('AF-ground', 0.9, 0.9);
	
	makeLuaSprite('AF-bushes', 'AF-bushes', -650, -580);
	setLuaSpriteScrollFactor('AF-bushes', 0.1, 0.1);
	scaleObject('AF-bushes', 1, 1);

	addLuaSprite('AF-farback', false);
	addLuaSprite('AF-treefar', false);
	addLuaSprite('AF-treeback', false);
	addLuaSprite('AF-treemid', false);
	addLuaSprite('AF-treefront', false);
	addLuaSprite('AF-ground', false);
	addLuaSprite('AF-bushes', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'passivecatded'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'catOof'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'auraBreak'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'auraRestore'); --put in mods/music/
end

function onUpdate()

	if inGameOver == true then
	setProperty('camFollow.y', 500)
	setProperty('camFollow.x', 1150)
	end
	
end
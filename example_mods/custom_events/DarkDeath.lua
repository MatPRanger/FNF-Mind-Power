function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'carmine'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'auraShatterDespair'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'auraBreakDespair'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'auraRestoreDespair'); --put in mods/music/
end
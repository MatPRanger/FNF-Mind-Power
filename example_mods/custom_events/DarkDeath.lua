function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'passivecatded'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'auraShatter'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'auraBreak'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'auraRestore'); --put in mods/music/
end
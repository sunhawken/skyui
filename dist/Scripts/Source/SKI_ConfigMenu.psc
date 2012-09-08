scriptname SKI_ConfigMenu extends SKI_ConfigBase

; PRIVATE VARIABLES -------------------------------------------------------------------------------

SKI_ConfigManager	_configPanel

int					_bulletTimeToggleID
int					_crosshairToggleID
int					_stealthFieldToggleID
int					_visionToggleID
int					_zoomToggleID
int					_grenadeHotkeyToggleID
int					_backpedalToggleID
int					_sprintToggleID

int					_healthVisualsToggleID
int					_primaryNeedsToggleID
int					_visorToggleID

int					_explosiveEntryToggleID
int					_sorterToggleID
int					_logoAnimToggleID

int					_playerEndMultSliderID
int					_npcEndMultSliderID
int					_playerLvlMultSliderID
int					_npcLvlMultSliderID

int					counter = 0
bool				_bulletTimeState = false


; EVENTS ------------------------------------------------------------------------------------------

; @implements SKI_ConfigBase
event OnPageReset(string a_page)

	if (a_page == "")
		LoadCustomContent("skyui_splash.swf")
		return
	endIf
	
	UnloadCustomContent()
	
	if (a_page == "Features")
		AddHeaderOption("Gameplay")
		AddEmptyOption()
		
		_bulletTimeToggleID		= AddToggleOption("Bullet Time", _bulletTimeState)
		_crosshairToggleID		= AddToggleOption("Dynamic Crosshair Time", true)
		_stealthFieldToggleID	= AddToggleOption("Enhanced Stealth Field", true)
		_visionToggleID			= AddToggleOption("Enhanced Vision", false)
		_zoomToggleID			= AddToggleOption("Enhanced Zoom", false)
		_grenadeHotkeyToggleID	= AddToggleOption("Grenade Hotkey", false)
		_backpedalToggleID		= AddToggleOption("Slower Backpedaling", true)
		_sprintToggleID			= AddToggleOption("Sprint", false)
		
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("Immersion")
		AddEmptyOption()
		
		_healthVisualsToggleID	= AddToggleOption("Health Visuals", false)
		_primaryNeedsToggleID	= AddToggleOption("Immersive Primary Needs", true)
		_visorToggleID			= AddToggleOption("Visor Overlays", true)
		
		AddEmptyOption()
		AddEmptyOption()
		AddEmptyOption()
		
		AddHeaderOption("Miscellaneous")
		AddEmptyOption()
		
		_explosiveEntryToggleID	= AddToggleOption("Explosive Entry", true)
		_sorterToggleID			= AddToggleOption("Inventory Sorter", true)
		_logoAnimToggleID		= AddToggleOption("Logo Animation", false)
	
	elseIf (a_page == "Character")
	
	elseIf (a_page == "Damage + Combat")
		AddHeaderOption("Hitpoints")
		AddEmptyOption()
		
		_playerEndMultSliderID	= AddSliderOption("Player Endurance Multiplier", 10)
		_npcEndMultSliderID		= AddSliderOption("NPC Endurance Multiplier", 7)
		_playerLvlMultSliderID	= AddSliderOption("Player Level Multiplier", 0)
		_npcLvlMultSliderID		= AddSliderOption("NPC Level Multiplier", counter)
	
	elseIf (a_page == "Stealth + Movement")
	elseIf (a_page == "Loot Rarity")
	elseIf (a_page == "Hotkeys")
		SetTitleText("H O T K E Y S")
		
	endIf
endEvent

; @implements SKI_ConfigBase
event OnOptionSelect(int a_option)
	string page = CurrentPage
	
	if (page == "Features")
		if (a_option == _bulletTimeToggleID)
			_bulletTimeState = !_bulletTimeState
			SetToggleOptionValue(a_option, _bulletTimeState)
		endIf
	
	elseIf (page == "Character")
	
	elseIf (page == "Damage + Combat")
		
	elseIf (page == "Stealth + Movement")
	elseIf (page == "Loot Rarity")
	elseIf (page == "Hotkeys")
	endIf
endEvent

; @implements SKI_ConfigBase
event OnOptionHighlight(int a_option)
	string page = CurrentPage
	
	if (page == "Features")
		if (a_option == _bulletTimeToggleID)
			SetInfoText("Slows down time. Like in May Payne, you know?")
		else
			SetInfoText("")
		endIf
	
	elseIf (page == "Character")
	elseIf (page == "Damage + Combat")
	elseIf (page == "Stealth + Movement")
	elseIf (page == "Loot Rarity")
	elseIf (page == "Hotkeys")
	endIf
endEvent

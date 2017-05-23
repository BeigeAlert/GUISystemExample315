
-- Let ClientUI.lua handle the creation/destruction of GUIScript1.
ModLoader.SetupFileHook("lua/ClientUI.lua", "lua/TestClientUI.lua", "post")

-- Let the Player class handle the creation/destruction of GUIScript2.
ModLoader.SetupFileHook("lua/Player.lua", "lua/TestPlayer.lua", "post")

-- Hook into the help screen to add GUIScript1 to the list of scripts it will
-- operate on when showing/hiding help screen.
ModLoader.SetupFileHook("lua/Hud/HelpScreen/HelpScreen.lua", "lua/TestHelpScreen.lua", "post")
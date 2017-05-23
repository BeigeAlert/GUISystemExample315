
-- Hook into this help screen method to add scripts to the list of scripts that
-- should be hidden by the help screen (which is pretty much all of them) that
-- are managed by ClientUI.  Be considerate of other mods!  Don't just overwrite
-- this method, hook into it!
local old_HelpScreen_InitHiddenScripts = HelpScreen_InitHiddenScripts
function HelpScreen_InitHiddenScripts()
    
    old_HelpScreen_InitHiddenScripts()
    
    HelpScreen_AddHiddenScript("GUIScript1")
    
end
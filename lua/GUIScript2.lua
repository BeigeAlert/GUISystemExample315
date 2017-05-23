
-- GUIScript2 uses the help screen's built-in observer system to be notified
-- of visibility changes via the implemented method "OnHelpScreenVisChange()".

class 'GUIScript2' (GUIScript)

function GUIScript2:Initialize()
    
    self.item = GUI.CreateItem()
    self.item:SetColor(Color(0,0,1,0.333))
    self.item:SetPosition(Vector(256,0,0))
    self.item:SetSize(Vector(256,256, 0))
    self.item:SetIsVisible(true)
    
    -- Tells the help screen to notify this script of changes to help screen
    -- visibility.
    -- NOTE: Immediately calls OnHelpScreenVisChange to bring the script up
    -- to speed.  Ensure any member variables used in OnHelpScreenVisChange
    -- are initialized before calling AddObserver.
    HelpScreen_AddObserver(self)
    
end

function GUIScript2:Uninitialize()
    
    GUI.DestroyItem(self.item)
    self.item = nil
    
    -- Tells the help screen to no longer worry about notifying this script.
    HelpScreen_RemoveObserver(self)
    
end

-- An error message is shown if the class does not implement this method.
function GUIScript2:OnHelpScreenVisChange(state)
    
    -- negate it because the "state" parameter that is passed in is the
    -- help screen's visibility.  Typically we want to hide things when
    -- the help screen is visible, and show them when it is not.
    local vis = not state
    
    self.item:SetIsVisible(vis)
    
end
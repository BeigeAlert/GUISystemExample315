
-- GUIScript1 uses the help screen's "Hidden Scripts" mechanism, which automatically
-- hides scripts when the help screen is shown, and un-hides them when help screen is
-- hidden, via a call to SetIsVisible and GetIsVisible.  An error message will be
-- displayed if these two methods are not implemented.  This only works for scripts
-- that are being managed by ClientUI.

class 'GUIScript1' (GUIScript)

function GUIScript1:Initialize()
    
    self.item = GUI.CreateItem()
    self.item:SetColor(Color(1,0,0,0.333))
    self.item:SetPosition(Vector(0,0,0))
    self.item:SetSize(Vector(256,256, 0))
    
    -- Call SetIsVisible now, in case the help screen is being held open when
    -- the script is created.
    self:SetIsVisible(not HelpScreen_GetHelpScreen():GetIsBeingDisplayed())
    
end

function GUIScript1:Uninitialize()
    
    GUI.DestroyItem(self.item)
    self.item = nil
    
end

function GUIScript1:SetIsVisible(state)
    
    self.visible = state
    self.item:SetIsVisible(state)
    
end

function GUIScript1:GetIsVisible()
    
    return self.visible
    
end
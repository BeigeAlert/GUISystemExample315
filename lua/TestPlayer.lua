
-- Player creates GUIScript2 instance when initialized, and destroys GUIScript2 when destroyed.

if Client then
    local old_Player_OnInitialized = Player.OnInitialized
    function Player:OnInitialized()
        
        old_Player_OnInitialized(self)
        
        -- ensure it's not some OTHER player that is being initialized.
        if Client.GetLocalPlayer() == self then
            self.testScript = GetGUIManager():CreateGUIScript("GUIScript2")
        end
        
    end
    
    local old_Player_OnDestroy = Player.OnDestroy
    function Player:OnDestroy()
        
        old_Player_OnDestroy(self)
        
        if self.testScript then
            GetGUIManager():DestroyGUIScript(self.testScript)
            self.testScript = nil
        end
        
    end
end
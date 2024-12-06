--!nonstrict
--!native

local self = {}
local MuteWarn = false

@native function self.new(Name: string, ID: number, Volume: number?, Parent: any?)
    if not ID then
        error("[GAME/DATA/CREATESOUND] Sound Creation Failed! SoundID is Missing or Nil!")
    end;
    
    if not Parent then
        warn("[GAME/DATA/CREATESOUND] Parent is missing or nil, Sound parent will fall back to sound service, to mute this go into the module and change MuteWarn to True")
    end;
    
    assert(type(ID) == "number", "[GAME/DATA/CREATESOUND] Sound Creation Failed! SoundID is not a number!")
    assert(type(Volume) == "number", "[GAME/DATA/CREATESOUND] Sound Creation Failed! SoundID is not a number!")
    
    local NewSFX = Instance.new("Sound", Parent or game:GetService("SoundService"))
    NewSFX.SoundId = "rbxassetid://"..ID
    NewSFX.Volume = Volume or 1
    NewSFX.Name = Name or "Sound"
    
    return NewSFX
end;

return self

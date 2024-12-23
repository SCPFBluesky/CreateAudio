--!strict
--!native

local self = {}
local MuteWarn = false

@native function self.new(ID: number, Name: string, Volume: number?, Parent: Instance?)

	do
		assert(ID, "[CREATESOUND] Sound Creation Failed! SoundID is Missing or nil!")

		assert(type(ID) == "number", "[CREATESOUND] Sound Creation Failed, SoundID Is not a number")

		if Volume then
			assert(type(Volume) == "number", "[CREATESOUND] Sound Creation Failed! Volume is not a number")
		end;

		if not Parent and not MuteWarn then
			warn("[CREATESOUND] Parent is missing or nil, Sound parent will fall back to SoundService. To mute this warning, set MuteWarn to true in the module.")
		end;
	end;

	local NewSFX = Instance.new("Sound")
	NewSFX.SoundId = "rbxassetid://" .. ID
	NewSFX.Volume = Volume or 1
	NewSFX.Name = Name or "Sound"
	NewSFX.Parent = Parent or game:GetService("SoundService")

	return NewSFX;

end;

return self;

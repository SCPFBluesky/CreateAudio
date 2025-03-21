--[[
	Name: CreateSound.luau
	Author(s) : WATDAHECKLOL32
	Date: 3/20/25
	RunTimeContext: Shared
	Information: A short simple module designed to help developers create sounds.
]]

--!nonstrict
return function(Name: string, ID: string | number, volume: number? | nil, Parent: Instance? | nil) : (Sound)
	assert(Name, "A name needs to be provided.");
	assert(ID, "A ID needs to be provided.");

	local SoundInstance: Sound = Instance.new("Sound");
	SoundInstance.Name = Name;

	SoundInstance.SoundId = "rbxassetid://" .. ID
	SoundInstance.Volume = volume or 1;

	SoundInstance.Parent = Parent;
	return SoundInstance;
end;

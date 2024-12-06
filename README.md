# CreateAudio
Simplifys roblox Audio Creation into 1 simple easy to use module

#HOW TO USE
# Createsound.new()

| **Parameter** | **Type**   | **Description**                                                                                                               |
|---------------|------------|-------------------------------------------------------------------------------------------------------------------------------|
| `Name`        | `string`   | The name of the sound.                                                                                                        |
| `ID`          | `number`   | The asset ID of the sound (as a number).                                                                                      |
| `Volume`      | `number?`  | (Optional) The volume of the new sound. Defaults to `1` if not provided.                                                      |
| `Parent`      | `any?`     | (Optional) Sets the parent of the sound if left blank or nil it will default to sound service, it will log this but you can mute the warn by configuring MuteWarn to True.  |


# Example Useage
```lua
local CreateSound = require(game:GetService("ReplicatedStorage").CreateSound) -- Require the Module so we can use it

local newSFX = CreateSound.new("SoundTest", 7851351309, 1)  -- Make a new varible so we can control \ play the sound we created with the module
newSFX:Play()
```


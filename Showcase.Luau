--!nocheck

local CreateAudio = require(game:GetService("ReplicatedStorage").CreateAudio)
local NewAudio = CreateAudio.new(89526064528706, "impending doom sound", 1, workspace)

print(NewAudio)

print(NewAudio.Parent)

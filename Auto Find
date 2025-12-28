-- Rayfield UI
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
	Name = "Find The Noobs",
	LoadingTitle = "Find The Noobs",
	LoadingSubtitle = "Auto Finder",
	ConfigurationSaving = {
		Enabled = false
	}
})

local Tab = Window:CreateTab("Find the noobs", 4483362458)

-- Variables
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local folder = workspace:WaitForChild("ToFind")

local AutoFind = false

-- Toggle
Tab:CreateToggle({
	Name = "Auto Find",
	CurrentValue = false,
	Flag = "AutoFindToggle",
	Callback = function(Value)
		AutoFind = Value

		task.spawn(function()
			while AutoFind do
				for _, part in ipairs(folder:GetChildren()) do
					if not AutoFind then break end
					if part:IsA("BasePart") then
						firetouchinterest(hrp, part, 0)
						firetouchinterest(hrp, part, 1)
					end
				end
				task.wait() -- ultra rapide (1 frame)
			end
		end)
	end
})

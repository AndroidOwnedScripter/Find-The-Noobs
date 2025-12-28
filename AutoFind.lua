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

-- Toggle Auto Find
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
				task.wait()
			end
		end)
	end
})

-- Petit texte
Tab:CreateParagraph({
	Title = "Discord",
	Content = "find op scripts here"
})

-- Bouton Join Discord
Tab:CreateButton({
	Name = "Join The Discord",
	Callback = function()
		setclipboard("https://discord.gg/YTAUARbbuj")

		Rayfield:Notify({
			Title = "Discord",
			Content = "Link copied to clipboard",
			Duration = 3
		})
	end
})

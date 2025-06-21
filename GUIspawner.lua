local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({
	Name = "DARKgag",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "Spawner"
})

local Tab = Window:MakeTab({
	Name = "Main Controls",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({Name = "Seed Spawner"})

Tab:AddTextbox({
	Name = "Seed Nams",
	Default = "Candy Bloosom",
	TextDisappear = false,
	Callback = function(value)
		-- Call remote event to spawn crop securely
		game.ReplicatedStorage.SpawnCrop:FireServer(value)
	end	  
})

Tab:AddButton({
	Name = "Spawn Seed",
	Callback = function()
		game.ReplicatedStorage.GiveTool:FireServer("Spawn Seed")
	end    
})

OrionLib:Init()

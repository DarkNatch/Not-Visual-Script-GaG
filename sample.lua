local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()
-- Create main window
local Window = OrionLib:MakeWindow({
    Name = "Dark Spawner",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "DarkSpawner"
})

local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

-- Data Store
local playerDataStore = DataStoreService:GetDataStore("GardenPlayerData")

-- Remote Events (create these in ReplicatedStorage)
local spawnSeedEvent = Instance.new("RemoteEvent")
spawnSeedEvent.Name = "SpawnSeed"
spawnSeedEvent.Parent = ReplicatedStorage

local spawnPetEvent = Instance.new("RemoteEvent")
spawnPetEvent.Name = "SpawnPet"
spawnPetEvent.Parent = ReplicatedStorage

-- Create Spawner Tab
local Tab = Window:MakeTab({
    Name = "Spawner",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

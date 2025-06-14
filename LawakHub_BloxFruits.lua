-- LawakHub | Blox Fruits Script by Tonilama765

-- Auto Haki Aktif
pcall(function()
    local v = require(game.ReplicatedStorage.Util.SkillUtil)
    local function enableHaki()
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            v.RequestUseSkill("Buso")
        end
    end
    game:GetService("RunService").RenderStepped:Connect(enableHaki)
end)

-- UI Framework
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "🌊 LawakHub | Blox Fruits", HidePremium = false, IntroText = "LawakHub Loading...", SaveConfig = true, ConfigFolder = "LawakHub"})

-- Main Tab
local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://6023426923", PremiumOnly = false})

MainTab:AddButton({
	Name = "Upgrade Race V2/V3/V4",
	Callback = function()
        -- Placeholder upgrade logic
        print("Upgrade Race executed!")
	end    
})

MainTab:AddToggle({
	Name = "Auto Haki",
	Default = true,
	Callback = function(Value)
		getgenv().AutoHaki = Value
	end    
})

MainTab:AddButton({
	Name = "Selesaikan Quest Otomatis",
	Callback = function()
        -- Quest auto-logic here
        print("Quest diselesaikan!")
	end    
})

-- Get Item Tab
local ItemTab = Window:MakeTab({Name = "Item & Raid", Icon = "rbxassetid://6031260798", PremiumOnly = false})

ItemTab:AddButton({
	Name = "Get Semua Item (Sword, Accessory)",
	Callback = function()
        -- Get item logic
        print("Item didapatkan!")
	end    
})

ItemTab:AddToggle({
	Name = "Auto Chest",
	Default = false,
	Callback = function(Value)
		getgenv().AutoChest = Value
	end    
})

ItemTab:AddToggle({
	Name = "Kill Aura (Saat Raid)",
	Default = false,
	Callback = function(Value)
		getgenv().KillAura = Value
	end    
})

-- Sea Event Tab
local SeaTab = Window:MakeTab({Name = "Sea Event", Icon = "rbxassetid://6031075931", PremiumOnly = false})

SeaTab:AddButton({
	Name = "Cek & Hadapi Sea Event",
	Callback = function()
        -- Sea event logic
        print("Sea Event dicek/dimulai")
	end    
})

-- Save Config Tab
local SettingTab = Window:MakeTab({Name = "Pengaturan", Icon = "rbxassetid://6035047409", PremiumOnly = false})

SettingTab:AddButton({
	Name = "Save Konfigurasi",
	Callback = function()
        OrionLib:SaveConfig()
        print("Config disimpan.")
	end    
})

OrionLib:Init()

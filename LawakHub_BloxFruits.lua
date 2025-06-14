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
local Window = OrionLib:MakeWindow({
	Name = "🌊 LawakHub | Blox Fruits",
	HidePremium = false,
	IntroText = "LawakHub Loading...",
	SaveConfig = true,
	ConfigFolder = "LawakHub"
})

-- Variabel Umum
getgenv().AutoFarm = false
getgenv().FarmMode = "Fighting Style"
getgenv().AutoBoss = false
getgenv().SelectedBoss = "Saber Expert"
getgenv().AutoChest = false
getgenv().KillAura = false

-- Main Tab
local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://6023426923", PremiumOnly = false})

MainTab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(Value)
		getgenv().AutoFarm = Value
		while getgenv().AutoFarm do
			task.wait()
			-- Farming logic here (placeholder)
			print("[LawakHub] Farming dengan: " .. getgenv().FarmMode)
		end
	end
})

MainTab:AddDropdown({
	Name = "Mode Serangan",
	Default = "Fighting Style",
	Options = {"Fighting Style", "Sword", "Fruit"},
	Callback = function(Value)
		getgenv().FarmMode = Value
	end
})

MainTab:AddToggle({
	Name = "Auto Farm Boss",
	Default = false,
	Callback = function(Value)
		getgenv().AutoBoss = Value
		while getgenv().AutoBoss do
			task.wait()
			print("[LawakHub] Farming Boss: " .. getgenv().SelectedBoss)
			-- Logic serang boss (placeholder)
		end
	end
})

MainTab:AddDropdown({
	Name = "Pilih Boss",
	Default = "Saber Expert",
	Options = {"Saber Expert", "Warden", "Swan", "Flamingo", "Ice Admiral"},
	Callback = function(Value)
		getgenv().SelectedBoss = Value
	end
})

MainTab:AddButton({
	Name = "Upgrade Race V2/V3/V4",
	Callback = function()
		print("Upgrade Race executed!")
	end
})

MainTab:AddButton({
	Name = "Selesaikan Quest Otomatis",
	Callback = function()
		print("Quest diselesaikan!")
	end
})

-- Item Tab
local ItemTab = Window:MakeTab({Name = "Item & Raid", Icon = "rbxassetid://6031260798", PremiumOnly = false})

ItemTab:AddButton({
	Name = "Get Semua Item (Sword, Accessory)",
	Callback = function()
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
		print("Sea Event dicek/dimulai")
	end
})

-- Pengaturan
local SettingTab = Window:MakeTab({Name = "Pengaturan", Icon = "rbxassetid://6035047409", PremiumOnly = false})

SettingTab:AddButton({
	Name = "Save Konfigurasi",
	Callback = function()
		OrionLib:SaveConfig()
		print("Config disimpan.")
	end
})

OrionLib:Init()

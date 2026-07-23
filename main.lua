-- WORNEX HUB V5.0 - Op Main Fully Functional
local CorrectKey = "WORNEX HUB"
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local StatsService = game:GetService("Stats")
local LocalPlayer = Players.LocalPlayer
local PlayerName = LocalPlayer and LocalPlayer.Name or "User"

local rEvents = ReplicatedStorage:WaitForChild("rEvents", 5)

---------------------------------------------------------
-- 1. KEY SYSTEM EKRANI
---------------------------------------------------------
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "WornexKeySystem"
ScreenGui.Parent = game:GetService("CoreGui") or LocalPlayer:WaitForChild("PlayerGui")

local KeyFrame = Instance.new("Frame")
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = ScreenGui
KeyFrame.BackgroundColor3 = Color3.fromRGB(30, 5, 5)
KeyFrame.BorderColor3 = Color3.fromRGB(150, 0, 0)
KeyFrame.BorderSizePixel = 2
KeyFrame.Position = UDim2.new(0.5, -260, 0.5, -150)
KeyFrame.Size = UDim2.new(0, 520, 0, 300)
KeyFrame.Active = true
KeyFrame.Draggable = true

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 8)
KeyCorner.Parent = KeyFrame

-- Sol Panel
local LeftPanel = Instance.new("Frame")
LeftPanel.Parent = KeyFrame
LeftPanel.BackgroundColor3 = Color3.fromRGB(15, 0, 0)
LeftPanel.Position = UDim2.new(0, 10, 0, 10)
LeftPanel.Size = UDim2.new(0, 230, 0, 280)
local LCorner = Instance.new("UICorner")
LCorner.CornerRadius = UDim.new(0, 6)
LCorner.Parent = LeftPanel

local Title = Instance.new("TextLabel")
Title.Parent = LeftPanel
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0, 15)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "🔴 WORNEX HUB V5.0 🔴"
Title.TextColor3 = Color3.fromRGB(230, 30, 30)
Title.TextSize = 17

local InfoList = {
    "☀️ Welcome, " .. PlayerName .. "!",
    "🏆 Top-Tier Script",
    "⚡ Best Muscle Legends Script",
    "💎 Elite Features Only",
    "👑 Made by WOZZY & SAITAMA"
}

for i, text in ipairs(InfoList) do
    local Label = Instance.new("TextLabel")
    Label.Parent = LeftPanel
    Label.BackgroundTransparency = 1
    Label.Position = UDim2.new(0, 15, 0, 50 + (i * 35))
    Label.Size = UDim2.new(1, -30, 0, 25)
    Label.Font = Enum.Font.SourceSans
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(240, 240, 240)
    Label.TextSize = 14
    Label.TextXAlignment = Enum.TextXAlignment.Left
end

-- Sağ Panel
local RightPanel = Instance.new("Frame")
RightPanel.Parent = KeyFrame
RightPanel.BackgroundColor3 = Color3.fromRGB(15, 0, 0)
RightPanel.Position = UDim2.new(0, 250, 0, 10)
RightPanel.Size = UDim2.new(0, 260, 0, 280)
local RCorner = Instance.new("UICorner")
RCorner.CornerRadius = UDim.new(0, 6)
RCorner.Parent = RightPanel

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Parent = RightPanel
KeyTitle.BackgroundTransparency = 1
KeyTitle.Position = UDim2.new(0, 0, 0, 15)
KeyTitle.Size = UDim2.new(1, 0, 0, 30)
KeyTitle.Font = Enum.Font.SourceSansBold
KeyTitle.Text = "🔑 KEY SYSTEM 🔑"
KeyTitle.TextColor3 = Color3.fromRGB(230, 30, 30)
KeyTitle.TextSize = 18

local KeyInput = Instance.new("TextBox")
KeyInput.Parent = RightPanel
KeyInput.BackgroundColor3 = Color3.fromRGB(35, 10, 10)
KeyInput.Position = UDim2.new(0, 15, 0, 60)
KeyInput.Size = UDim2.new(1, -30, 0, 35)
KeyInput.Font = Enum.Font.SourceSans
KeyInput.PlaceholderText = "🔑 Enter key here..."
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 14
local InpCorner = Instance.new("UICorner")
InpCorner.CornerRadius = UDim.new(0, 6)
InpCorner.Parent = KeyInput

local VerifyBtn = Instance.new("TextButton")
VerifyBtn.Parent = RightPanel
VerifyBtn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
VerifyBtn.Position = UDim2.new(0, 15, 0, 105)
VerifyBtn.Size = UDim2.new(1, -30, 0, 35)
VerifyBtn.Font = Enum.Font.SourceSansBold
VerifyBtn.Text = "🚀 VERIFY KEY 🚀"
VerifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyBtn.TextSize = 15
local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 6)
BtnCorner.Parent = VerifyBtn

---------------------------------------------------------
-- 2. ANA HİLE MENÜSÜ
---------------------------------------------------------
local function OpenMainHub()
    ScreenGui:Destroy()
    
    local HubGui = Instance.new("ScreenGui")
    HubGui.Name = "WornexMainHub"
    HubGui.Parent = game:GetService("CoreGui") or LocalPlayer:WaitForChild("PlayerGui")
    
    local MainFrame = Instance.new("Frame")
    MainFrame.Parent = HubGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(45, 5, 5)
    MainFrame.BackgroundTransparency = 0.15
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, -280, 0.5, -170)
    MainFrame.Size = UDim2.new(0, 560, 0, 340)
    MainFrame.Active = true
    MainFrame.Draggable = true
    
    local HCorner = Instance.new("UICorner")
    HCorner.CornerRadius = UDim.new(0, 8)
    HCorner.Parent = MainFrame

    -- En Üst Başlık Barı
    local TopTitleBar = Instance.new("Frame")
    TopTitleBar.Parent = MainFrame
    TopTitleBar.BackgroundColor3 = Color3.fromRGB(15, 0, 0)
    TopTitleBar.Size = UDim2.new(1, 0, 0, 28)
    local TBCorner = Instance.new("UICorner")
    TBCorner.CornerRadius = UDim.new(0, 8)
    TBCorner.Parent = TopTitleBar

    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Parent = TopTitleBar
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(220, 38, 38)
    ToggleBtn.BorderSizePixel = 0
    ToggleBtn.Position = UDim2.new(0, 8, 0, 6)
    ToggleBtn.Size = UDim2.new(0, 16, 0, 16)
    ToggleBtn.Text = ""
    local CircleCorner = Instance.new("UICorner")
    CircleCorner.CornerRadius = UDim.new(1, 0)
    CircleCorner.Parent = ToggleBtn

    local OpenMiniBtn = Instance.new("TextButton")
    OpenMiniBtn.Parent = HubGui
    OpenMiniBtn.BackgroundColor3 = Color3.fromRGB(120, 10, 10)
    OpenMiniBtn.BackgroundTransparency = 0.2
    OpenMiniBtn.Position = UDim2.new(0.5, -260, 0.4, 0)
    OpenMiniBtn.Size = UDim2.new(0, 520, 0, 28)
    OpenMiniBtn.Font = Enum.Font.SourceSansBold
    OpenMiniBtn.Text = "🔴 Wornex Hub || 5.0 Version || Have good day ! - " .. PlayerName
    OpenMiniBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    OpenMiniBtn.TextSize = 14
    OpenMiniBtn.Visible = false
    OpenMiniBtn.Active = true
    OpenMiniBtn.Draggable = true
    
    local MiniCorner = Instance.new("UICorner")
    MiniCorner.CornerRadius = UDim.new(0, 6)
    MiniCorner.Parent = OpenMiniBtn

    ToggleBtn.MouseButton1Click:Connect(function()
        MainFrame.Visible = false
        OpenMiniBtn.Visible = true
    end)

    OpenMiniBtn.MouseButton1Click:Connect(function()
        MainFrame.Visible = true
        OpenMiniBtn.Visible = false
    end)

    local TitleText = Instance.new("TextLabel")
    TitleText.Parent = TopTitleBar
    TitleText.BackgroundTransparency = 1
    TitleText.Position = UDim2.new(0, 32, 0, 0)
    TitleText.Size = UDim2.new(1, -40, 1, 0)
    TitleText.Font = Enum.Font.SourceSansBold
    TitleText.Text = "Wornex Hub || 5.0 Version || Have good day ! - " .. PlayerName .. " by Wozzy By Saitama"
    TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleText.TextSize = 13
    TitleText.TextXAlignment = Enum.TextXAlignment.Left

    -- Sekmeler Barı
    local TabBar = Instance.new("Frame")
    TabBar.Parent = MainFrame
    TabBar.BackgroundColor3 = Color3.fromRGB(25, 2, 2)
    TabBar.Position = UDim2.new(0, 0, 0, 28)
    TabBar.Size = UDim2.new(1, 0, 0, 30)

    local Tabs = {"Op Main", "Farm", "Fast Farm", "Gifts", "Misc", "Crystals", "Stats"}
    local TabButtons = {}
    local TabFrames = {}

    for i, tabName in ipairs(Tabs) do
        local TabBtn = Instance.new("TextButton")
        TabBtn.Parent = TabBar
        TabBtn.BackgroundTransparency = 1
        TabBtn.Position = UDim2.new((i - 1) * (1 / #Tabs), 0, 0, 0)
        TabBtn.Size = UDim2.new(1 / #Tabs, 0, 1, 0)
        TabBtn.Font = Enum.Font.SourceSansBold
        TabBtn.Text = tabName
        TabBtn.TextColor3 = (i == 1) and Color3.fromRGB(255, 60, 60) or Color3.fromRGB(180, 180, 180)
        TabBtn.TextSize = 13
        TabButtons[tabName] = TabBtn

        local ContentFrame = Instance.new("ScrollingFrame")
        ContentFrame.Parent = MainFrame
        ContentFrame.BackgroundTransparency = 1
        ContentFrame.Position = UDim2.new(0, 15, 0, 65)
        ContentFrame.Size = UDim2.new(1, -30, 1, -75)
        ContentFrame.CanvasSize = UDim2.new(0, 0, 0, 950)
        ContentFrame.ScrollBarThickness = 5
        ContentFrame.Visible = (i == 1)
        TabFrames[tabName] = ContentFrame

        TabBtn.MouseButton1Click:Connect(function()
            for name, frame in pairs(TabFrames) do
                frame.Visible = (name == tabName)
            end
            for name, btn in pairs(TabButtons) do
                btn.TextColor3 = (name == tabName) and Color3.fromRGB(255, 60, 60) or Color3.fromRGB(180, 180, 180)
            end
        end)
    end

    local function CreateSectionTitle(parent, text, posY, color)
        local SecTitle = Instance.new("TextLabel")
        SecTitle.Parent = parent
        SecTitle.BackgroundTransparency = 1
        SecTitle.Position = UDim2.new(0, 0, 0, posY)
        SecTitle.Size = UDim2.new(1, 0, 0, 25)
        SecTitle.Font = Enum.Font.SourceSansBold
        SecTitle.Text = text
        SecTitle.TextColor3 = color or Color3.fromRGB(255, 255, 255)
        SecTitle.TextSize = 14
        SecTitle.TextXAlignment = Enum.TextXAlignment.Left
        return SecTitle
    end

    local function CreateCheckBox(parent, text, posY, callback)
        local CheckBoxFrame = Instance.new("Frame")
        CheckBoxFrame.Parent = parent
        CheckBoxFrame.BackgroundTransparency = 1
        CheckBoxFrame.Position = UDim2.new(0, 0, 0, posY)
        CheckBoxFrame.Size = UDim2.new(1, 0, 0, 24)

        local Box = Instance.new("TextButton")
        Box.Parent = CheckBoxFrame
        Box.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
        Box.BorderSizePixel = 0
        Box.Position = UDim2.new(0, 5, 0, 4)
        Box.Size = UDim2.new(0, 16, 0, 16)
        Box.Text = ""

        local Label = Instance.new("TextLabel")
        Label.Parent = CheckBoxFrame
        Label.BackgroundTransparency = 1
        Label.Position = UDim2.new(0, 30, 0, 0)
        Label.Size = UDim2.new(1, -30, 1, 0)
        Label.Font = Enum.Font.SourceSans
        Label.Text = text
        Label.TextColor3 = Color3.fromRGB(220, 220, 220)
        Label.TextSize = 14
        Label.TextXAlignment = Enum.TextXAlignment.Left

        local state = false
        Box.MouseButton1Click:Connect(function()
            state = not state
            Box.BackgroundColor3 = state and Color3.fromRGB(40, 200, 40) or Color3.fromRGB(180, 20, 20)
            if callback then callback(state) end
        end)
    end

    local function CreateLine(parent, posY)
        local Line = Instance.new("Frame")
        Line.Parent = parent
        Line.BackgroundColor3 = Color3.fromRGB(100, 20, 20)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 0, 0, posY)
        Line.Size = UDim2.new(1, 0, 0, 1)
    end

    local function CreateButton(parent, text, posY)
        local Btn = Instance.new("TextButton")
        Btn.Parent = parent
        Btn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
        Btn.Position = UDim2.new(0, 5, 0, posY)
        Btn.Size = UDim2.new(0, 240, 0, 26)
        Btn.Font = Enum.Font.SourceSansBold
        Btn.Text = text
        Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        Btn.TextSize = 14
        local BCorner = Instance.new("UICorner")
        BCorner.CornerRadius = UDim.new(0, 5)
        BCorner.Parent = Btn
        return Btn
    end

    ---------------------------------------------------------
    -- 3. ÖZEL ANTI-AFK UI PANELİ
    ---------------------------------------------------------
    local AFKFrame = Instance.new("Frame")
    AFKFrame.Name = "WornexAFKFrame"
    AFKFrame.Parent = HubGui
    AFKFrame.BackgroundColor3 = Color3.fromRGB(180, 15, 15)
    AFKFrame.BorderSizePixel = 0
    AFKFrame.Position = UDim2.new(0.5, -125, 0.3, 0)
    AFKFrame.Size = UDim2.new(0, 250, 0, 130)
    AFKFrame.Visible = false
    AFKFrame.Active = true
    AFKFrame.Draggable = true

    local AFKCorner = Instance.new("UICorner")
    AFKCorner.CornerRadius = UDim.new(0, 12)
    AFKCorner.Parent = AFKFrame

    local AFKTitle = Instance.new("TextLabel")
    AFKTitle.Parent = AFKFrame
    AFKTitle.BackgroundTransparency = 1
    AFKTitle.Position = UDim2.new(0, 0, 0, 10)
    AFKTitle.Size = UDim2.new(1, 0, 0, 30)
    AFKTitle.Font = Enum.Font.SourceSansBold
    AFKTitle.Text = "WORNEX || AFK"
    AFKTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKTitle.TextSize = 22

    local AFKTimerLabel = Instance.new("TextLabel")
    AFKTimerLabel.Parent = AFKFrame
    AFKTimerLabel.BackgroundTransparency = 1
    AFKTimerLabel.Position = UDim2.new(0, 15, 0, 42)
    AFKTimerLabel.Size = UDim2.new(1, -30, 0, 22)
    AFKTimerLabel.Font = Enum.Font.SourceSansBold
    AFKTimerLabel.Text = "00:00:00"
    AFKTimerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKTimerLabel.TextSize = 18
    AFKTimerLabel.TextXAlignment = Enum.TextXAlignment.Left

    local AFKFPSLabel = Instance.new("TextLabel")
    AFKFPSLabel.Parent = AFKFrame
    AFKFPSLabel.BackgroundTransparency = 1
    AFKFPSLabel.Position = UDim2.new(0, 15, 0, 68)
    AFKFPSLabel.Size = UDim2.new(1, -30, 0, 22)
    AFKFPSLabel.Font = Enum.Font.SourceSansBold
    AFKFPSLabel.Text = "FPS: 60"
    AFKFPSLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKFPSLabel.TextSize = 18
    AFKFPSLabel.TextXAlignment = Enum.TextXAlignment.Left

    local AFKPingLabel = Instance.new("TextLabel")
    AFKPingLabel.Parent = AFKFrame
    AFKPingLabel.BackgroundTransparency = 1
    AFKPingLabel.Position = UDim2.new(0, 15, 0, 94)
    AFKPingLabel.Size = UDim2.new(1, -30, 0, 22)
    AFKPingLabel.Font = Enum.Font.SourceSansBold
    AFKPingLabel.Text = "Ping: 0 ms"
    AFKPingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKPingLabel.TextSize = 18
    AFKPingLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- Sağ Alt Bildirim Kutusu
    local AFKNotify = Instance.new("Frame")
    AFKNotify.Name = "WornexAFKNotify"
    AFKNotify.Parent = HubGui
    AFKNotify.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    AFKNotify.BackgroundTransparency = 0.2
    AFKNotify.Position = UDim2.new(1, -210, 1, -80)
    AFKNotify.Size = UDim2.new(0, 190, 0, 50)
    AFKNotify.Visible = false

    local NotifyCorner = Instance.new("UICorner")
    NotifyCorner.CornerRadius = UDim.new(0, 6)
    NotifyCorner.Parent = AFKNotify

    local NotifyDot = Instance.new("Frame")
    NotifyDot.Parent = AFKNotify
    NotifyDot.BackgroundColor3 = Color3.fromRGB(230, 30, 30)
    NotifyDot.Position = UDim2.new(0, 10, 0, 12)
    NotifyDot.Size = UDim2.new(0, 10, 0, 10)
    local DotCorner = Instance.new("UICorner")
    DotCorner.CornerRadius = UDim.new(1, 0)
    DotCorner.Parent = NotifyDot

    local NotifyTitle = Instance.new("TextLabel")
    NotifyTitle.Parent = AFKNotify
    NotifyTitle.BackgroundTransparency = 1
    NotifyTitle.Position = UDim2.new(0, 26, 0, 6)
    NotifyTitle.Size = UDim2.new(1, -30, 0, 20)
    NotifyTitle.Font = Enum.Font.SourceSansBold
    NotifyTitle.Text = "WORNEX || AFK"
    NotifyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    NotifyTitle.TextSize = 14
    NotifyTitle.TextXAlignment = Enum.TextXAlignment.Left

    local NotifySub = Instance.new("TextLabel")
    NotifySub.Parent = AFKNotify
    NotifySub.BackgroundTransparency = 1
    NotifySub.Position = UDim2.new(0, 26, 0, 24)
    NotifySub.Size = UDim2.new(1, -30, 0, 18)
    NotifySub.Font = Enum.Font.SourceSans
    NotifySub.Text = "Anti AFK activated!"
    NotifySub.TextColor3 = Color3.fromRGB(200, 200, 200)
    NotifySub.TextSize = 12
    NotifySub.TextXAlignment = Enum.TextXAlignment.Left

    ---------------------------------------------------------
    -- OP MAIN DEĞİŞKENLERİ VE DİĞER AYARLAR
    ---------------------------------------------------------
    _G.LockPosition = false
    _G.LockedCFrame = nil
    _G.AntiKnockback = false
    _G.HideAllFrames = false
    _G.AntiAFK = false
    local afkStartTime = 0

    _G.AutoTool = nil
    _G.FastRebirth = false
    _G.SetSize1 = false

    _G.AutoSize = false
    _G.AutoSetSize = false
    _G.AutoSpeed = false
    _G.AutoSetSpeed = false
    _G.SizeNaN = false

    _G.NoClip = false
    _G.InfJump = false
    _G.FullWalkOnWater = false

    _G.AutoOpenCrystal = false
    _G.SelectedCrystal = "Blue Crystal"

    _G.AutoJungleBench = false
    _G.AutoJungleSquat = false
    _G.AutoJunglePullUps = false
    _G.AutoJungleFarm = false

    _G.AutoBenchPress = false
    _G.AutoSquat = false
    _G.AutoDeadlift = false
    _G.AutoPullUp = false

    ---------------------------------------------------------
    -- YARDIMCI FONKSİYONLAR (GYM EVENTLERİ & TELEPORT)
    ---------------------------------------------------------
    local function fireGymEvent(machineType)
        if rEvents then
            if rEvents:FindFirstChild("repEvent") then
                rEvents.repEvent:FireServer("rep")
            end
            if rEvents:FindFirstChild("gymEvent") then
                rEvents.gymEvent:FireServer(machineType)
            end
        end
    end

    local function toggleHideFrames(hide)
        local pGui = LocalPlayer:FindFirstChild("PlayerGui")
        if pGui then
            for _, gui in pairs(pGui:GetChildren()) do
                if gui:IsA("ScreenGui") and gui.Name ~= "WornexMainHub" and gui.Name ~= "WornexKeySystem" then
                    gui.Enabled = not hide
                end
            end
        end
    end

    ---------------------------------------------------------
    -- 1. OP MAIN SEKMESİ
    ---------------------------------------------------------
    local OpMainFrame = TabFrames["Op Main"]
    
    -- 1. OP Things / Farms
    CreateSectionTitle(OpMainFrame, "📌 OP Things / Farms", 0)
    
    CreateCheckBox(OpMainFrame, "📍 Lock Position", 25, function(v) 
        _G.LockPosition = v 
        if v and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            _G.LockedCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end)
    
    CreateCheckBox(OpMainFrame, "🛡️ Anti Knockback", 50, function(v) 
        _G.AntiKnockback = v 
    end)
    
    CreateCheckBox(OpMainFrame, "👁️ Hide All Frames", 75, function(v) 
        _G.HideAllFrames = v 
        toggleHideFrames(v)
    end)
    
    CreateCheckBox(OpMainFrame, "⏰ Anti AFK", 100, function(v) 
        _G.AntiAFK = v
        AFKFrame.Visible = v
        AFKNotify.Visible = v
        if v then
            afkStartTime = os.time()
        end
    end)

    CreateLine(OpMainFrame, 130)

    -- 2. Tools
    CreateSectionTitle(OpMainFrame, "💪 Tools", 140)
    CreateCheckBox(OpMainFrame, "🏋️ Weight", 165, function(v) _G.AutoTool = v and "Weight" or nil end)
    CreateCheckBox(OpMainFrame, "🏋️ Pushups", 190, function(v) _G.AutoTool = v and "Pushups" or nil end)
    CreateCheckBox(OpMainFrame, "🏋️ Handstands", 215, function(v) _G.AutoTool = v and "Handstands" or nil end)
    CreateCheckBox(OpMainFrame, "🏋️ Situps", 240, function(v) _G.AutoTool = v and "Situps" or nil end)

    CreateLine(OpMainFrame, 270)

    -- 3. Auto Jungle Gym
    CreateSectionTitle(OpMainFrame, "🏝️ Auto Jungle Gym", 280)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Bench Press", 305, function(v) _G.AutoJungleBench = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Squat", 330, function(v) _G.AutoJungleSquat = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Pull Ups", 355, function(v) _G.AutoJunglePullUps = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Farm", 380, function(v) _G.AutoJungleFarm = v end)

    CreateLine(OpMainFrame, 410)

    -- 4. Auto Gyms
    CreateSectionTitle(OpMainFrame, "🏋️ Auto Gyms", 420)
    CreateCheckBox(OpMainFrame, "🏋️ Bench Press", 445, function(v) _G.AutoBenchPress = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Squat", 470, function(v) _G.AutoSquat = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Deadlift", 495, function(v) _G.AutoDeadlift = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Pull Up", 520, function(v) _G.AutoPullUp = v end)

    ---------------------------------------------------------
    -- 2. FARM SEKMESİ
    ---------------------------------------------------------
    local FarmFrame = TabFrames["Farm"]
    CreateSectionTitle(FarmFrame, "🏋️ Auto Training / Farm", 0)
    CreateCheckBox(FarmFrame, "🏋️ Auto Weight", 28, function(v) _G.AutoTool = v and "Weight" or nil end)
    CreateCheckBox(FarmFrame, "💥 Auto Pushups", 53, function(v) _G.AutoTool = v and "Pushups" or nil end)
    CreateCheckBox(FarmFrame, "🦵 Auto Situps", 78, function(v) _G.AutoTool = v and "Situps" or nil end)
    CreateCheckBox(FarmFrame, "🤸 Auto Handstands", 103, function(v) _G.AutoTool = v and "Handstands" or nil end)
    CreateCheckBox(FarmFrame, "🥊 Auto Punch", 128, function(v) _G.AutoTool = v and "Punch" or nil end)

    ---------------------------------------------------------
    -- 3. FAST FARM SEKMESİ
    ---------------------------------------------------------
    local FastFarmFrame = TabFrames["Fast Farm"]
    CreateSectionTitle(FastFarmFrame, "⚠️ WARNING: These features are only for", 0, Color3.fromRGB(234, 179, 8))
    CreateSectionTitle(FastFarmFrame, "Those who have 7-8 pack can use it.", 20, Color3.fromRGB(234, 179, 8))
    CreateLine(FastFarmFrame, 50)
    CreateSectionTitle(FastFarmFrame, "🚀 Fast Rebirth", 60)
    CreateCheckBox(FastFarmFrame, "▶️ Fast Rebirth", 85, function(v) _G.FastRebirth = v end)
    CreateCheckBox(FastFarmFrame, "🏷️ Set Size 1", 110, function(v) _G.SetSize1 = v end)

    ---------------------------------------------------------
    -- 4. GIFTS SEKMESİ
    ---------------------------------------------------------
    local GiftsFrame = TabFrames["Gifts"]
    CreateSectionTitle(GiftsFrame, "🎁 Gifting Protein egg:", 0)

    ---------------------------------------------------------
    -- 5. MISC SEKMESİ (GÖRSELE GÖRE TAM DÜZENLENDİ)
    ---------------------------------------------------------
    local MiscFrame = TabFrames["Misc"]
    CreateSectionTitle(MiscFrame, "🏆 Size & Speed", 0)
    CreateCheckBox(MiscFrame, "📐 Auto Size", 25, function(v) _G.AutoSize = v end)
    CreateCheckBox(MiscFrame, "🔄 Auto Set Size", 50, function(v) _G.AutoSetSize = v end)
    CreateCheckBox(MiscFrame, "🏃 Auto Speed", 75, function(v) _G.AutoSpeed = v end)
    CreateCheckBox(MiscFrame, "⚡ Auto Set Speed", 100, function(v) _G.AutoSetSpeed = v end)
    CreateCheckBox(MiscFrame, "❌ Size NaN", 125, function(v) _G.SizeNaN = v end)

    CreateLine(MiscFrame, 155)

    CreateSectionTitle(MiscFrame, "🚶 Movement", 165)
    CreateCheckBox(MiscFrame, "👤 No-Clip", 190, function(v) _G.NoClip = v end)
    CreateCheckBox(MiscFrame, "🦘 Infinite Jump", 215, function(v) _G.InfJump = v end)
    CreateCheckBox(MiscFrame, "🌊 Full Walk on Water", 240, function(v) _G.FullWalkOnWater = v end)

    ---------------------------------------------------------
    -- 6. CRYSTALS SEKMESİ
    ---------------------------------------------------------
    local CrystalsFrame = TabFrames["Crystals"]
    CreateSectionTitle(CrystalsFrame, "💎 Auto Open Crystals", 0)
    
    local SelectedLabel = CreateSectionTitle(CrystalsFrame, "📌 Selected: Blue Crystal", 25, Color3.fromRGB(74, 222, 128))
    CreateCheckBox(CrystalsFrame, "✨ Auto Open Crystal", 55, function(v) _G.AutoOpenCrystal = v end)
    CreateLine(CrystalsFrame, 90)

    CreateSectionTitle(CrystalsFrame, "🔮 Select Egg / Crystal (Worst to Best):", 100)

    local CrystalList = {
        "Blue Crystal", "Green Crystal", "Frost Crystal", "Mythical Crystal",
        "Inferno Crystal", "Legends Crystal", "Muscle Monarch Crystal",
        "Galaxy Crystal", "Cyber Crystal", "Super Crystal"
    }

    local crystalBtnButtons = {}

    for i, cName in ipairs(CrystalList) do
        local posY = 130 + ((i - 1) * 32)
        local cBtn = CreateButton(CrystalsFrame, "🥚 " .. cName, posY)
        cBtn.BackgroundColor3 = (cName == _G.SelectedCrystal) and Color3.fromRGB(34, 197, 94) or Color3.fromRGB(120, 20, 20)
        table.insert(crystalBtnButtons, {btn = cBtn, name = cName})

        cBtn.MouseButton1Click:Connect(function()
            _G.SelectedCrystal = cName
            SelectedLabel.Text = "📌 Selected: " .. cName
            
            for _, item in ipairs(crystalBtnButtons) do
                if item.name == _G.SelectedCrystal then
                    item.btn.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
                else
                    item.btn.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
                end
            end
        end)
    end

    ---------------------------------------------------------
    -- 7. STATS SEKMESİ
    ---------------------------------------------------------
    local StatsFrame = TabFrames["Stats"]
    CreateSectionTitle(StatsFrame, "📊 Player Stats:", 0)

    ---------------------------------------------------------
    -- OP MAIN - STEP VE RENDER DÖNGÜLERİ
    ---------------------------------------------------------
    LocalPlayer.Idled:Connect(function()
        if _G.AntiAFK then
            VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            task.wait(1)
            VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end
    end)

    local lastFrameTime = tick()
    RunService.RenderStepped:Connect(function()
        if _G.AntiAFK then
            local now = tick()
            local fps = math.floor(1 / (now - lastFrameTime))
            lastFrameTime = now
            AFKFPSLabel.Text = "FPS: " .. tostring(fps)

            local ping = 0
            pcall(function()
                ping = math.floor(StatsService.Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            AFKPingLabel.Text = "Ping: " .. tostring(ping) .. " ms"

            local elapsed = os.time() - afkStartTime
            local hrs = math.floor(elapsed / 3600)
            local mins = math.floor((elapsed % 3600) / 60)
            local secs = elapsed % 60
            AFKTimerLabel.Text = string.format("%02d:%02d:%02d", hrs, mins, secs)
        end
    end)

    game:GetService("UserInputService").JumpRequest:Connect(function()
        if _G.InfJump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)

    RunService.Stepped:Connect(function()
        if _G.NoClip and LocalPlayer.Character then
            for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end

        if _G.FullWalkOnWater and workspace:FindFirstChild("Water") then
            workspace.Water.CanCollide = true
        end

        if _G.LockPosition and _G.LockedCFrame and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.CFrame = _G.LockedCFrame
        end

        if _G.AntiKnockback and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            LocalPlayer.Character.HumanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
        end
    end)

    ---------------------------------------------------------
    -- TAM FONKSİYONEL ANA DÖNGÜ (OP MAIN & MISC DAHİL)
    ---------------------------------------------------------
    task.spawn(function()
        local jungleFarmIndex = 1
        local jungleGyms = {"Jungle Bench Press", "Jungle Squat", "Jungle Pull Ups"}

        while task.wait(0.1) do
            local char = LocalPlayer.Character

            -- Auto Tools
            if char and _G.AutoTool then
                local tool = char:FindFirstChild(_G.AutoTool) or (LocalPlayer:FindFirstChild("Backpack") and LocalPlayer.Backpack:FindFirstChild(_G.AutoTool))
                if tool then
                    if tool.Parent ~= char then tool.Parent = char end
                    tool:Activate()
                    if rEvents and rEvents:FindFirstChild("muscleEvent") then
                        rEvents.muscleEvent:FireServer("punch", "leftHand")
                        rEvents.muscleEvent:FireServer("punch", "rightHand")
                    end
                end
            end

            -- Misc Seferleri (Size & Speed Fonksiyonları)
            if _G.AutoSize and rEvents and rEvents:FindFirstChild("changeSizeRemote") then
                rEvents.changeSizeRemote:FireServer(10)
            end

            if _G.AutoSetSize and rEvents and rEvents:FindFirstChild("changeSizeRemote") then
                rEvents.changeSizeRemote:FireServer(1)
            end

            if _G.AutoSpeed and char and char:FindFirstChildOfClass("Humanoid") then
                char:FindFirstChildOfClass("Humanoid").WalkSpeed = 100
            end

            if _G.AutoSetSpeed and char and char:FindFirstChildOfClass("Humanoid") then
                char:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
            end

            if _G.SizeNaN and rEvents and rEvents:FindFirstChild("changeSizeRemote") then
                rEvents.changeSizeRemote:FireServer(0/0)
            end

            -- Auto Jungle Gyms
            if _G.AutoJungleBench then fireGymEvent("Jungle Bench Press") end
            if _G.AutoJungleSquat then fireGymEvent("Jungle Squat") end
            if _G.AutoJunglePullUps then fireGymEvent("Jungle Pull Ups") end
            if _G.AutoJungleFarm then
                fireGymEvent(jungleGyms[jungleFarmIndex])
                jungleFarmIndex = (jungleFarmIndex % #jungleGyms) + 1
            end

            -- Auto Normal Gyms
            if _G.AutoBenchPress then fireGymEvent("Bench Press") end
            if _G.AutoSquat then fireGymEvent("Squat") end
            if _G.AutoDeadlift then fireGymEvent("Deadlift") end
            if _G.AutoPullUp then fireGymEvent("Pull Up") end

            -- Fast Rebirth & Size
            if _G.FastRebirth and rEvents and rEvents:FindFirstChild("rebirthRemote") then
                rEvents.rebirthRemote:InvokeServer()
            end

            if _G.SetSize1 and rEvents and rEvents:FindFirstChild("changeSizeRemote") then
                rEvents.changeSizeRemote:FireServer(1)
            end

            -- Auto Crystal
            if _G.AutoOpenCrystal and _G.SelectedCrystal ~= "" and rEvents and rEvents:FindFirstChild("openCrystalRemote") then
                rEvents.openCrystalRemote:InvokeServer(_G.SelectedCrystal)
            end
        end
    end)
end

---------------------------------------------------------
-- 4. KEY KONTROLÜ
---------------------------------------------------------
VerifyBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == CorrectKey then
        VerifyBtn.Text = "✅ DOĞRU KEY!"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(34, 197, 94)
        task.wait(0.8)
        OpenMainHub()
    else
        VerifyBtn.Text = "❌ YANLIŞ KEY!"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(239, 68, 68)
        task.wait(1.5)
        VerifyBtn.Text = "🚀 VERIFY KEY 🚀"
        VerifyBtn.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
    end
end)

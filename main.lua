-- QTX CLAN - Op Main & Expanded Farm Fully Functional (Draggable & Scaled Anti AFK UI + Fixed Auto Punch)
local CorrectKey = "QTXONTOP"
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
ScreenGui.Name = "QTXKeySystem"
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
Title.Text = "🔴 QTX CLANS 🔴"
Title.TextColor3 = Color3.fromRGB(230, 30, 30)
Title.TextSize = 17

local InfoList = {
    "☀️ Welcome, " .. PlayerName .. "!",
    "🏆 Top-Tier Script",
    "⚡ Best Muscle Legends Script",
    "💎 Elite Features Only",
    "👑 Made by WOZZY"
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
    TitleText.Text = "Wornex Hub || 5.0 Version || Have good day ! - " .. PlayerName .. " by Wozzy"
    TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleText.TextSize = 13
    TitleText.TextXAlignment = Enum.TextXAlignment.Left

    -- Kaydırılabilir Sekmeler Barı (ScrollingFrame)
    local TabBar = Instance.new("ScrollingFrame")
    TabBar.Parent = MainFrame
    TabBar.BackgroundColor3 = Color3.fromRGB(25, 2, 2)
    TabBar.BackgroundTransparency = 0
    TabBar.BorderSizePixel = 0
    TabBar.Position = UDim2.new(0, 0, 0, 28)
    TabBar.Size = UDim2.new(1, 0, 0, 30)
    TabBar.CanvasSize = UDim2.new(0, 0, 0, 0)
    TabBar.ScrollBarThickness = 3
    TabBar.ScrollingDirection = Enum.ScrollingDirection.X

    local Tabs = {"Teleports", "Credits", "Farm", "Fast Farm", "Gifts", "Crystals", "Stats", "Op Main", "Calculator", "Killer", "Trade", "Extras"}
    local TabButtons = {}
    local TabFrames = {}

    local tabButtonWidth = 110
    TabBar.CanvasSize = UDim2.new(0, #Tabs * tabButtonWidth, 0, 0)

    for i, tabName in ipairs(Tabs) do
        local TabBtn = Instance.new("TextButton")
        TabBtn.Parent = TabBar
        TabBtn.BackgroundTransparency = 1
        TabBtn.Position = UDim2.new(0, (i - 1) * tabButtonWidth, 0, 0)
        TabBtn.Size = UDim2.new(0, tabButtonWidth, 1, 0)
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
        ContentFrame.CanvasSize = UDim2.new(0, 0, 0, 1200)
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

    local function CreateInputBox(parent, placeholderText, posY)
        local Input = Instance.new("TextBox")
        Input.Parent = parent
        Input.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
        Input.Position = UDim2.new(0, 5, 0, posY)
        Input.Size = UDim2.new(0, 240, 0, 28)
        Input.Font = Enum.Font.SourceSansBold
        Input.PlaceholderText = placeholderText
        Input.Text = ""
        Input.TextColor3 = Color3.fromRGB(255, 255, 255)
        Input.TextSize = 13
        local ICorner = Instance.new("UICorner")
        ICorner.CornerRadius = UDim.new(0, 5)
        ICorner.Parent = Input
        return Input
    end

    ---------------------------------------------------------
    -- DEĞİŞKENLER VE AYARLAR
    ---------------------------------------------------------
    _G.LockPosition = false
    _G.LockedCFrame = nil
    _G.AntiKnockback = false
    _G.HideAllFrames = false
    _G.AntiAFK = false

    _G.AutoTool = nil
    _G.FastRebirth = false
    _G.SetSize1 = false

    _G.BoostFPS = false
    _G.OptimizePing = false
    _G.GamepassAutoLift = false
    _G.FastTools = false

    _G.AutoMultiWeight = false
    _G.AutoMultiPushups = false
    _G.AutoMultiSitups = false
    _G.AutoMultiHandstands = false

    _G.AutoRebirthInf = false
    _G.AutoSize1_Farm = false
    _G.AutoSize2_Farm = false
    _G.AutoTeleportMuscleKing = false
    _G.AutoEgg30 = false
    _G.AutoEgg60 = false

    _G.NoClip = false
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

    _G.AutoClearInventory = false

    ---------------------------------------------------------
    -- WORNEX AFK UI OLUŞTURUCU
    ---------------------------------------------------------
    local AFKStatsGui = Instance.new("ScreenGui")
    AFKStatsGui.Name = "WornexAFKGui"
    AFKStatsGui.Parent = game:GetService("CoreGui") or LocalPlayer:WaitForChild("PlayerGui")
    AFKStatsGui.Enabled = false

    local AFKMainBox = Instance.new("Frame")
    AFKMainBox.Parent = AFKStatsGui
    AFKMainBox.BackgroundColor3 = Color3.fromRGB(180, 20, 20)
    AFKMainBox.BorderSizePixel = 0
    AFKMainBox.Position = UDim2.new(0.5, -110, 0.35, -60)
    AFKMainBox.Size = UDim2.new(0, 220, 0, 125)
    AFKMainBox.Active = true
    AFKMainBox.Draggable = true
    local AMB_Corner = Instance.new("UICorner")
    AMB_Corner.CornerRadius = UDim.new(0, 10)
    AMB_Corner.Parent = AFKMainBox

    local AFKTitleLabel = Instance.new("TextLabel")
    AFKTitleLabel.Parent = AFKMainBox
    AFKTitleLabel.BackgroundTransparency = 1
    AFKTitleLabel.Position = UDim2.new(0, 0, 0, 10)
    AFKTitleLabel.Size = UDim2.new(1, 0, 0, 25)
    AFKTitleLabel.Font = Enum.Font.SourceSansBold
    AFKTitleLabel.Text = "Wornex || AFK"
    AFKTitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKTitleLabel.TextSize = 18

    local AFKTimerLabel = Instance.new("TextLabel")
    AFKTimerLabel.Parent = AFKMainBox
    AFKTimerLabel.BackgroundTransparency = 1
    AFKTimerLabel.Position = UDim2.new(0, 0, 0, 38)
    AFKTimerLabel.Size = UDim2.new(1, 0, 0, 28)
    AFKTimerLabel.Font = Enum.Font.SourceSansBold
    AFKTimerLabel.Text = "00:00:00"
    AFKTimerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKTimerLabel.TextSize = 22

    local AFKFPSLabel = Instance.new("TextLabel")
    AFKFPSLabel.Parent = AFKMainBox
    AFKFPSLabel.BackgroundTransparency = 1
    AFKFPSLabel.Position = UDim2.new(0, 15, 0, 72)
    AFKFPSLabel.Size = UDim2.new(1, -30, 0, 20)
    AFKFPSLabel.Font = Enum.Font.SourceSansBold
    AFKFPSLabel.Text = "FPS: 60"
    AFKFPSLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKFPSLabel.TextSize = 15
    AFKFPSLabel.TextXAlignment = Enum.TextXAlignment.Left

    local AFKPingLabel = Instance.new("TextLabel")
    AFKPingLabel.Parent = AFKMainBox
    AFKPingLabel.BackgroundTransparency = 1
    AFKPingLabel.Position = UDim2.new(0, 15, 0, 96)
    AFKPingLabel.Size = UDim2.new(1, -30, 0, 20)
    AFKPingLabel.Font = Enum.Font.SourceSansBold
    AFKPingLabel.Text = "Ping: 0 ms"
    AFKPingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    AFKPingLabel.TextSize = 15
    AFKPingLabel.TextXAlignment = Enum.TextXAlignment.Left

    local AFKNotification = Instance.new("Frame")
    AFKNotification.Parent = AFKStatsGui
    AFKNotification.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    AFKNotification.BorderSizePixel = 0
    AFKNotification.Position = UDim2.new(1, -220, 1, -65)
    AFKNotification.Size = UDim2.new(0, 210, 0, 50)
    AFKNotification.Active = true
    AFKNotification.Draggable = true
    local AN_Corner = Instance.new("UICorner")
    AN_Corner.CornerRadius = UDim.new(0, 6)
    AN_Corner.Parent = AFKNotification

    local ANRedDot = Instance.new("Frame")
    ANRedDot.Parent = AFKNotification
    ANRedDot.BackgroundColor3 = Color3.fromRGB(220, 38, 38)
    ANRedDot.BorderSizePixel = 0
    ANRedDot.Position = UDim2.new(0, 10, 0, 14)
    ANRedDot.Size = UDim2.new(0, 12, 0, 12)
    local AND_Corner = Instance.new("UICorner")
    AND_Corner.CornerRadius = UDim.new(1, 0)
    AND_Corner.Parent = ANRedDot

    local ANText1 = Instance.new("TextLabel")
    ANText1.Parent = AFKNotification
    ANText1.BackgroundTransparency = 1
    ANText1.Position = UDim2.new(0, 30, 0, 8)
    ANText1.Size = UDim2.new(1, -30, 0, 18)
    ANText1.Font = Enum.Font.SourceSansBold
    ANText1.Text = "WORNEX || AFK"
    ANText1.TextColor3 = Color3.fromRGB(255, 255, 255)
    ANText1.TextSize = 14
    ANText1.TextXAlignment = Enum.TextXAlignment.Left

    local ANText2 = Instance.new("TextLabel")
    ANText2.Parent = AFKNotification
    ANText2.BackgroundTransparency = 1
    ANText2.Position = UDim2.new(0, 30, 0, 26)
    ANText2.Size = UDim2.new(1, -30, 0, 16)
    ANText2.Font = Enum.Font.SourceSans
    ANText2.Text = "Anti AFK activated!"
    ANText2.TextColor3 = Color3.fromRGB(180, 180, 180)
    ANText2.TextSize = 12
    ANText2.TextXAlignment = Enum.TextXAlignment.Left

    local TopHUDTag = Instance.new("Frame")
    TopHUDTag.Parent = AFKStatsGui
    TopHUDTag.BackgroundColor3 = Color3.fromRGB(150, 15, 15)
    TopHUDTag.BorderSizePixel = 0
    TopHUDTag.Position = UDim2.new(0, 10, 0, 10)
    TopHUDTag.Size = UDim2.new(0, 310, 0, 26)
    TopHUDTag.Active = true
    TopHUDTag.Draggable = true
    local THT_Corner = Instance.new("UICorner")
    THT_Corner.CornerRadius = UDim.new(0, 4)
    THT_Corner.Parent = TopHUDTag

    local THTRedDot = Instance.new("Frame")
    THTRedDot.Parent = TopHUDTag
    THTRedDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    THTRedDot.BorderSizePixel = 0
    THTRedDot.Position = UDim2.new(0, 8, 0, 7)
    THTRedDot.Size = UDim2.new(0, 12, 0, 12)
    local THTD_Corner = Instance.new("UICorner")
    THTD_Corner.CornerRadius = UDim.new(1, 0)
    THTD_Corner.Parent = THTRedDot

    local THTLabel = Instance.new("TextLabel")
    THTLabel.Parent = TopHUDTag
    THTLabel.BackgroundTransparency = 1
    THTLabel.Position = UDim2.new(0, 26, 0, 0)
    THTLabel.Size = UDim2.new(1, -26, 1, 0)
    THTLabel.Font = Enum.Font.SourceSansBold
    THTLabel.Text = "Wornex Hub || 5.0 Version || Have good day ! - " .. PlayerName
    THTLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    THTLabel.TextSize = 12
    THTLabel.TextXAlignment = Enum.TextXAlignment.Left

    local afkStartTime = 0
    local frameCount = 0
    local lastTick = tick()
    local currentFPS = 60

    RunService.RenderStepped:Connect(function()
        frameCount = frameCount + 1
        local now = tick()
        if now - lastTick >= 1 then
            currentFPS = math.floor(frameCount / (now - lastTick))
            frameCount = 0
            lastTick = now
        end

        if _G.AntiAFK then
            local elapsed = math.floor(tick() - afkStartTime)
            local hours = math.floor(elapsed / 3600)
            local minutes = math.floor((elapsed % 3600) / 60)
            local seconds = elapsed % 60
            AFKTimerLabel.Text = string.format("%02d:%02d:%02d", hours, minutes, seconds)
            
            AFKFPSLabel.Text = "FPS: " .. tostring(currentFPS)
            
            local pingVal = 100
            pcall(function()
                pingVal = math.floor(StatsService.Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            AFKPingLabel.Text = "Ping: " .. tostring(pingVal) .. " ms"
        end
    end)

    ---------------------------------------------------------
    -- YARDIMCI FONKSİYONLAR
    ---------------------------------------------------------
    local function getREvents()
        if not rEvents or not rEvents.Parent then
            rEvents = ReplicatedStorage:FindFirstChild("rEvents")
        end
        return rEvents
    end

    local function fireGymEvent(machineType)
        local evs = getREvents()
        if evs then
            local rep = evs:FindFirstChild("repEvent")
            if rep then
                pcall(function() rep:FireServer("rep") end)
            end
            local gym = evs:FindFirstChild("gymEvent")
            if gym then
                pcall(function() gym:FireServer(machineType) end)
            end
        end
    end

    local function toggleHideFrames(hide)
        local pGui = LocalPlayer:FindFirstChild("PlayerGui")
        if pGui then
            for _, gui in pairs(pGui:GetChildren()) do
                if gui:IsA("ScreenGui") and gui.Name ~= "WornexMainHub" and gui.Name ~= "WornexKeySystem" and gui.Name ~= "WornexAFKGui" then
                    pcall(function() gui.Enabled = not hide end)
                end
            end
        end
    end

    local function useToolAndPunch(toolName)
        local char = LocalPlayer.Character
        if char then
            if toolName == "Punch" then
                local evs = getREvents()
                if evs and evs:FindFirstChild("muscleEvent") then
                    pcall(function()
                        evs.muscleEvent:FireServer("punch", "leftHand")
                        evs.muscleEvent:FireServer("punch", "rightHand")
                    end)
                end
            else
                local tool = char:FindFirstChild(toolName) or (LocalPlayer:FindFirstChild("Backpack") and LocalPlayer.Backpack:FindFirstChild(toolName))
                if tool then
                    if tool.Parent ~= char then 
                        pcall(function() tool.Parent = char end)
                    end
                    pcall(function() tool:Activate() end)
                end
                local evs = getREvents()
                if evs and evs:FindFirstChild("muscleEvent") then
                    pcall(function()
                        evs.muscleEvent:FireServer("punch", "leftHand")
                        evs.muscleEvent:FireServer("punch", "rightHand")
                    end)
                end
            end
        end
    end

    ---------------------------------------------------------
    -- 1. OP MAIN SEKMESİ
    ---------------------------------------------------------
    local OpMainFrame = TabFrames["Op Main"]
    CreateSectionTitle(OpMainFrame, "📌 OP Things / Farms", 0)
    CreateCheckBox(OpMainFrame, "📍 Lock Position", 25, function(v) 
        _G.LockPosition = v 
        if v and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            _G.LockedCFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end)
    CreateCheckBox(OpMainFrame, "🛡️ Anti Knockback", 50, function(v) _G.AntiKnockback = v end)
    CreateCheckBox(OpMainFrame, "👁️ Hide All Frames", 75, function(v) _G.HideAllFrames = v toggleHideFrames(v) end)
    CreateCheckBox(OpMainFrame, "⏰ Anti AFK", 100, function(v) 
        _G.AntiAFK = v
        if v then
            afkStartTime = tick()
            AFKStatsGui.Enabled = true
        else
            AFKStatsGui.Enabled = false
        end
    end)

    CreateLine(OpMainFrame, 130)

    CreateSectionTitle(OpMainFrame, "💪 Tools", 140)
    CreateCheckBox(OpMainFrame, "🏋️ Weight", 165, function(v) _G.AutoTool = v and "Weight" or nil end)
    CreateCheckBox(OpMainFrame, "🏋️ Pushups", 190, function(v) _G.AutoTool = v and "Pushups" or nil end)
    CreateCheckBox(OpMainFrame, "🏋️ Handstands", 215, function(v) _G.AutoTool = v and "Handstands" or nil end)
    CreateCheckBox(OpMainFrame, "🏋️ Situps", 240, function(v) _G.AutoTool = v and "Situps" or nil end)

    CreateLine(OpMainFrame, 270)

    CreateSectionTitle(OpMainFrame, "🏝️ Auto Jungle Gym", 280)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Bench Press", 305, function(v) _G.AutoJungleBench = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Squat", 330, function(v) _G.AutoJungleSquat = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Pull Ups", 355, function(v) _G.AutoJunglePullUps = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Jungle Farm", 380, function(v) _G.AutoJungleFarm = v end)

    CreateLine(OpMainFrame, 410)

    CreateSectionTitle(OpMainFrame, "🏋️ Auto Gyms", 420)
    CreateCheckBox(OpMainFrame, "🏋️ Bench Press", 445, function(v) _G.AutoBenchPress = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Squat", 470, function(v) _G.AutoSquat = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Deadlift", 495, function(v) _G.AutoDeadlift = v end)
    CreateCheckBox(OpMainFrame, "🏋️ Pull Up", 520, function(v) _G.AutoPullUp = v end)

    ---------------------------------------------------------
    -- 2. FARM SEKMESİ
    ---------------------------------------------------------
    local FarmFrame = TabFrames["Farm"]
    
    CreateSectionTitle(FarmFrame, "⚡ Performance & Tools", 0)
    CreateCheckBox(FarmFrame, "🚀 Boost FPS", 25, function(v) 
        _G.BoostFPS = v 
        if v then
            pcall(function()
                for _, item in pairs(workspace:GetDescendants()) do
                    if item:IsA("BasePart") then item.Material = Enum.Material.SmoothPlastic end
                    if item:IsA("Decal") or item:IsA("Texture") then item:Destroy() end
                end
            end)
        end
    end)
    CreateCheckBox(FarmFrame, "📡 Optimize Ping", 50, function(v) 
        _G.OptimizePing = v 
        if v then
            pcall(function()
                settings():GetService("NetworkSettings").IncomingReplicationLag = 0
            end)
        end
    end)
    CreateCheckBox(FarmFrame, "🏋️ Gamepass AutoLift", 75, function(v) _G.GamepassAutoLift = v end)
    CreateCheckBox(FarmFrame, "🏋️ Auto Weight", 100, function(v) _G.AutoTool = v and "Weight" or nil end)
    CreateCheckBox(FarmFrame, "💥 Auto Pushups", 125, function(v) _G.AutoTool = v and "Pushups" or nil end)
    CreateCheckBox(FarmFrame, "🤸 Auto Handstands", 150, function(v) _G.AutoTool = v and "Handstands" or nil end)
    CreateCheckBox(FarmFrame, "🦵 Auto Situps", 175, function(v) _G.AutoTool = v and "Situps" or nil end)
    CreateCheckBox(FarmFrame, "🥊 Auto Punch", 200, function(v) _G.AutoTool = v and "Punch" or nil end)
    CreateCheckBox(FarmFrame, "⚡ Fast Tools", 225, function(v) _G.FastTools = v end)

    CreateLine(FarmFrame, 255)

    CreateSectionTitle(FarmFrame, "🛠️ Auto Multi Tools", 265)
    CreateCheckBox(FarmFrame, "🏋️ Auto Weight + Punch", 290, function(v) _G.AutoMultiWeight = v end)
    CreateCheckBox(FarmFrame, "💥 Auto Pushups + Punch", 315, function(v) _G.AutoMultiPushups = v end)
    CreateCheckBox(FarmFrame, "🦵 Auto Situps + Punch", 340, function(v) _G.AutoMultiSitups = v end)
    CreateCheckBox(FarmFrame, "🤸 Auto Handstands + Punch", 365, function(v) _G.AutoMultiHandstands = v end)

    CreateLine(FarmFrame, 395)

    CreateSectionTitle(FarmFrame, "🔄 Auto Rebirth & Extras", 405)
    CreateCheckBox(FarmFrame, "♾️ Auto Rebirth (Infinite)", 430, function(v) _G.AutoRebirthInf = v end)
    CreateCheckBox(FarmFrame, "📏 Auto Size 1", 455, function(v) _G.AutoSize1_Farm = v end)
    CreateCheckBox(FarmFrame, "📏 Auto Size 2", 480, function(v) _G.AutoSize2_Farm = v end)
    CreateCheckBox(FarmFrame, "👑 Auto Teleport to Muscle King", 505, function(v) _G.AutoTeleportMuscleKing = v end)
    CreateCheckBox(FarmFrame, "👁️ Hide All Frames", 530, function(v) toggleHideFrames(v) end)
    CreateCheckBox(FarmFrame, "🥚 Auto Egg (30 min)", 555, function(v) 
        _G.AutoEgg30 = v 
        if v then
            local evs = getREvents()
            if evs and evs:FindFirstChild("getTimeRewardRemote") then
                pcall(function() evs.getTimeRewardRemote:InvokeServer(1) end)
            end
        end
    end)
    CreateCheckBox(FarmFrame, "🥚 Auto Egg (60 min)", 580, function(v) 
        _G.AutoEgg60 = v 
        if v then
            local evs = getREvents()
            if evs and evs:FindFirstChild("getTimeRewardRemote") then
                pcall(function() evs.getTimeRewardRemote:InvokeServer(2) end)
            end
        end
    end)

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
    local ProteinEggCountLabel = CreateSectionTitle(GiftsFrame, "🥚 Protein Eggs: 0", 25)
    
    local EggTargetInput = CreateInputBox(GiftsFrame, "👤 Player to Gift Eggs", 55)
    local EggAmountInput = CreateInputBox(GiftsFrame, "🔢 Amount of Eggs", 90)
    local GiftEggBtn = CreateButton(GiftsFrame, "🎁 Gift Eggs", 125)

    GiftEggBtn.MouseButton1Click:Connect(function()
        local target = EggTargetInput.Text
        local amount = tonumber(EggAmountInput.Text) or 1
        local evs = getREvents()
        if target ~= "" and evs and evs:FindFirstChild("giftEggRemote") then
            pcall(function() evs.giftEggRemote:FireServer(target, amount) end)
        end
    end)

    CreateLine(GiftsFrame, 160)

    CreateSectionTitle(GiftsFrame, "🎁 Gifting Tropical Shakes:", 170)
    local ShakeCountLabel = CreateSectionTitle(GiftsFrame, "🍹 Tropical Shakes: 0", 195)

    local ShakeTargetInput = CreateInputBox(GiftsFrame, "👤 Player to Gift Tropical Shakes", 225)
    local ShakeAmountInput = CreateInputBox(GiftsFrame, "🔢 Tropical Shakes gift", 260)
    local GiftShakeBtn = CreateButton(GiftsFrame, "🎁 Gift Tropical Shakes", 295)

    GiftShakeBtn.MouseButton1Click:Connect(function()
        local target = ShakeTargetInput.Text
        local amount = tonumber(ShakeAmountInput.Text) or 1
        local evs = getREvents()
        if target ~= "" and evs and evs:FindFirstChild("giftShakeRemote") then
            pcall(function() evs.giftShakeRemote:FireServer(target, amount) end)
        end
    end)

    CreateLine(GiftsFrame, 330)
    CreateCheckBox(GiftsFrame, "🗑️ Auto Clear Inventory", 345, function(v)
        _G.AutoClearInventory = v
        if v then
            pcall(function()
                for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
                    if item:IsA("Tool") and item.Name ~= "Weight" and item.Name ~= "Pushups" and item.Name ~= "Handstands" and item.Name ~= "Situps" then
                        item:Destroy()
                    end
                end
            end)
        end
    end)

    ---------------------------------------------------------
    -- 5. STATS (MISC/STATS) SEKMESİ
    ---------------------------------------------------------
    local MiscFrame = TabFrames["Stats"]
    CreateSectionTitle(MiscFrame, "🚶 Movement", 0)
    CreateCheckBox(MiscFrame, "👤 No-Clip", 25, function(v) _G.NoClip = v end)
    CreateCheckBox(MiscFrame, "🦘 Infinite Jump", 50, function(v) _G.InfJump = v end)
    CreateCheckBox(MiscFrame, "🌊 Full Walk on Water", 75, function(v) _G.FullWalkOnWater = v end)

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
                item.btn.BackgroundColor3 = (item.name == _G.SelectedCrystal) and Color3.fromRGB(34, 197, 94) or Color3.fromRGB(120, 20, 20)
            end
        end)
    end

    ---------------------------------------------------------
    -- 7. STATS SEKMESİ
    ---------------------------------------------------------
    local StatsFrame = TabFrames["Stats"]
    CreateSectionTitle(StatsFrame, "📊 Player Stats:", 115)

    local ChoosePlayerBtn = CreateButton(StatsFrame, "👤 Choose Player", 145)
    ChoosePlayerBtn.Size = UDim2.new(0, 240, 0, 28)
    ChoosePlayerBtn.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
    ChoosePlayerBtn.TextXAlignment = Enum.TextXAlignment.Left

    local DropdownFrame = Instance.new("ScrollingFrame")
    DropdownFrame.Parent = StatsFrame
    DropdownFrame.BackgroundColor3 = Color3.fromRGB(20, 5, 5)
    DropdownFrame.BorderColor3 = Color3.fromRGB(100, 20, 20)
    DropdownFrame.Position = UDim2.new(0, 5, 0, 175)
    DropdownFrame.Size = UDim2.new(0, 240, 0, 100)
    DropdownFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    DropdownFrame.Visible = false
    DropdownFrame.ZIndex = 5

    local selectedTargetPlayer = LocalPlayer

    local function updatePlayerDropdown()
        for _, child in pairs(DropdownFrame:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end
        local list = Players:GetPlayers()
        DropdownFrame.CanvasSize = UDim2.new(0, 0, 0, #list * 25)
        for i, p in ipairs(list) do
            local pBtn = Instance.new("TextButton")
            pBtn.Parent = DropdownFrame
            pBtn.BackgroundColor3 = Color3.fromRGB(30, 10, 10)
            pBtn.Position = UDim2.new(0, 0, 0, (i - 1) * 25)
            pBtn.Size = UDim2.new(1, 0, 0, 24)
            pBtn.Font = Enum.Font.SourceSans
            pBtn.Text = "  " .. p.Name
            pBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            pBtn.TextSize = 13
            pBtn.TextXAlignment = Enum.TextXAlignment.Left
            pBtn.ZIndex = 6
            pBtn.MouseButton1Click:Connect(function()
                selectedTargetPlayer = p
                ChoosePlayerBtn.Text = "👤 " .. p.Name
                DropdownFrame.Visible = false
            end)
        end
    end

    ChoosePlayerBtn.MouseButton1Click:Connect(function()
        DropdownFrame.Visible = not DropdownFrame.Visible
        if DropdownFrame.Visible then updatePlayerDropdown() end
    end)

    local StatNameLabel = CreateSectionTitle(StatsFrame, "👤 Name: N/A", 183)
    local StatUserLabel = CreateSectionTitle(StatsFrame, "👤 Username: N/A", 208)
    local StatStrengthLabel = CreateSectionTitle(StatsFrame, "💪 Strength: 0 (0)", 233)
    local StatRebirthsLabel = CreateSectionTitle(StatsFrame, "🔄 Rebirths: 0 (0)", 258)
    local StatDurabilityLabel = CreateSectionTitle(StatsFrame, "🛡️ Durability: 0 (0)", 283)
    local StatAgilityLabel = CreateSectionTitle(StatsFrame, "🏃 Agility: 0 (0)", 308)
    local StatKillsLabel = CreateSectionTitle(StatsFrame, "⚔️ Kills: 0 (0)", 333)
    local StatKarmaLabel = CreateSectionTitle(StatsFrame, "😈 Evil Karma: 0 (0)", 358)

    task.spawn(function()
        while task.wait(0.5) do
            if selectedTargetPlayer and selectedTargetPlayer.Parent then
                pcall(function()
                    StatNameLabel.Text = "👤 Name: " .. selectedTargetPlayer.DisplayName
                    StatUserLabel.Text = "👤 Username: " .. selectedTargetPlayer.Name
                    
                    local leaderstats = selectedTargetPlayer:FindFirstChild("leaderstats")
                    if leaderstats then
                        local strength = leaderstats:FindFirstChild("Strength")
                        local rebirths = leaderstats:FindFirstChild("Rebirths")
                        local durability = leaderstats:FindFirstChild("Durability")
                        local agility = leaderstats:FindFirstChild("Agility")
                        local kills = leaderstats:FindFirstChild("Kills")
                        local karma = leaderstats:FindFirstChild("Evil Karma") or leaderstats:FindFirstChild("Karma")

                        StatStrengthLabel.Text = "💪 Strength: " .. (strength and strength.Value or "0") .. " (0)"
                        StatRebirthsLabel.Text = "🔄 Rebirths: " .. (rebirths and rebirths.Value or "0") .. " (0)"
                        StatDurabilityLabel.Text = "🛡️ Durability: " .. (durability and durability.Value or "0") .. " (0)"
                        StatAgilityLabel.Text = "🏃 Agility: " .. (agility and agility.Value or "0") .. " (0)"
                        StatKillsLabel.Text = "⚔️ Kills: " .. (kills and kills.Value or "0") .. " (0)"
                        StatKarmaLabel.Text = "😈 Evil Karma: " .. (karma and karma.Value or "0") .. " (0)"
                    end
                end)
            end
        end
    end)

    ---------------------------------------------------------
    -- 8. CALCULATOR SEKMESİ
    ---------------------------------------------------------
    local CalculatorFrame = TabFrames["Calculator"]
    CreateSectionTitle(CalculatorFrame, "🧮 Stats Calculator", 0)
    CreateCheckBox(CalculatorFrame, "💪 Strength", 30, function(v) _G.CalcStrength = v end)
    CreateCheckBox(CalculatorFrame, "🛡️ Durability", 60, function(v) _G.CalcDurability = v end)
    CreateCheckBox(CalculatorFrame, "🔄 Rebirths", 90, function(v) _G.CalcRebirths = v end)
    CreateCheckBox(CalculatorFrame, "⚔️ Kills", 120, function(v) _G.CalcKills = v end)
    CreateCheckBox(CalculatorFrame, "🥊 Brawls", 150, function(v) _G.CalcBrawls = v end)
    local ResetCalcBtn = CreateButton(CalculatorFrame, "🔄 Reset All Calculators", 185)
    ResetCalcBtn.Size = UDim2.new(0, 240, 0, 28)
    ResetCalcBtn.BackgroundColor3 = Color3.fromRGB(120, 20, 20)

    ---------------------------------------------------------
    -- 9. KILLER SEKMESİ
    ---------------------------------------------------------
    local KillerFrame = TabFrames["Killer"]
    CreateSectionTitle(KillerFrame, "⚔️ Player Killer Options", 0)

    ---------------------------------------------------------
    -- 10. TRADE SEKMESİ
    ---------------------------------------------------------
    local TradeFrame = TabFrames["Trade"]
    CreateSectionTitle(TradeFrame, "🤝 Trade System", 0)
    CreateLine(TradeFrame, 25)

    local ChooseTradePlayerBtn = CreateButton(TradeFrame, "👤 Choose Player", 35)
    ChooseTradePlayerBtn.Size = UDim2.new(0, 240, 0, 28)
    ChooseTradePlayerBtn.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
    ChooseTradePlayerBtn.TextXAlignment = Enum.TextXAlignment.Left

    local ChoosePetBtn = CreateButton(TradeFrame, "🐾 Choose Pet", 70)
    ChoosePetBtn.Size = UDim2.new(0, 240, 0, 28)
    ChoosePetBtn.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
    ChoosePetBtn.TextXAlignment = Enum.TextXAlignment.Left

    CreateCheckBox(TradeFrame, "🔄 Auto Trade", 105, function(v) _G.AutoTrade = v end)

    ---------------------------------------------------------
    -- 11. EXTRAS SEKMESİ
    ---------------------------------------------------------
    local ExtrasFrame = TabFrames["Extras"]
    CreateSectionTitle(ExtrasFrame, "✨ Extra Features", 0)

    ---------------------------------------------------------
    -- 12. TELEPORTS SEKMESİ
    ---------------------------------------------------------
    local TeleportsFrame = TabFrames["Teleports"]
    CreateSectionTitle(TeleportsFrame, "🗺️ All Islands Teleport", 0)

    local Islands = {
        {Name = "🏝️ Tiny Island", CFrame = CFrame.new(17, 3, 114)},
        {Name = "🏝️ Frost Island", CFrame = CFrame.new(239, 137, -358)},
        {Name = "🏝️ Mythical Island", CFrame = CFrame.new(2419, 15, 1075)},
        {Name = "🏝️ Eternal Island", CFrame = CFrame.new(-3892, 929, -10557)},
        {Name = "🏝️ Legend Island", CFrame = CFrame.new(4162, 607, -3955)},
        {Name = "🏝️ Muscle King Island", CFrame = CFrame.new(-8612, 15, -5731)},
        {Name = "🏝️ Enchanted Island", CFrame = CFrame.new(945, 66, 2197)},
        {Name = "🏝️ Desert Island", CFrame = CFrame.new(827, 26, 4239)},
        {Name = "🏝️ Jungle Island", CFrame = CFrame.new(-2462, 26, -3912)},
        {Name = "🏝️ Inferno Island", CFrame = CFrame.new(2628, 66, -1141)},
        {Name = "🏝️ Safe Zone / Spawn", CFrame = CFrame.new(0, 3, 0)}
    }

    for i, island in ipairs(Islands) do
        local posY = 30 + ((i - 1) * 32)
        local tpBtn = CreateButton(TeleportsFrame, island.Name, posY)
        tpBtn.MouseButton1Click:Connect(function()
            local char = LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                pcall(function()
                    char.HumanoidRootPart.CFrame = island.CFrame + Vector3.new(0, 5, 0)
                end)
            end
        end)
    end

    ---------------------------------------------------------
    -- 13. CREDITS SEKMESİ (Görseldeki Gibi Dolduruldu)
    ---------------------------------------------------------
    local CreditsFrame = TabFrames["Credits"]
    CreateSectionTitle(CreditsFrame, "🌟 Credits & Information", 0)
    CreateSectionTitle(CreditsFrame, "👑 Script Creator: WOZZY (QTX CLAN)", 30, Color3.fromRGB(255, 60, 60))
    CreateSectionTitle(CreditsFrame, "💎 Hub Version: 5.0 Op Main & Expanded Farm", 60, Color3.fromRGB(255, 255, 255))
    CreateSectionTitle(CreditsFrame, "🚀 Special Thanks: QTX CLAN Community", 90, Color3.fromRGB(100, 200, 255))
    CreateSectionTitle(CreditsFrame, "✨ Key: QTXONTOP", 120, Color3.fromRGB(74, 222, 128))

    ---------------------------------------------------------
    -- STEP VE RENDER DÖNGÜLERİ
    ---------------------------------------------------------
    game:GetService("UserInputService").JumpRequest:Connect(function()
        if _G.InfJump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
            pcall(function() LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping") end)
        end
    end)

    RunService.Stepped:Connect(function()
        if _G.NoClip and LocalPlayer.Character then
            pcall(function()
                for _, part in pairs(LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") then part.CanCollide = false end
                end
            end)
        end

        if _G.FullWalkOnWater and workspace:FindFirstChild("Water") then
            pcall(function() workspace.Water.CanCollide = true end)
        end

        if _G.LockPosition and _G.LockedCFrame and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            pcall(function() LocalPlayer.Character.HumanoidRootPart.CFrame = _G.LockedCFrame end)
        end

        if _G.AntiKnockback and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            pcall(function()
                LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                LocalPlayer.Character.HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
            end)
        end
        
        if _G.AntiAFK then
            pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0,0))
            end)
        end
    end)

    ---------------------------------------------------------
    -- ANA DÖNGÜ
    ---------------------------------------------------------
    task.spawn(function()
        local jungleFarmIndex = 1
        local jungleGyms = {"Jungle Bench Press", "Jungle Squat", "Jungle Pull Ups"}

        while task.wait(_G.FastTools and 0.01 or 0.1) do
            local char = LocalPlayer.Character

            if char and _G.AutoTool then
                useToolAndPunch(_G.AutoTool)
            end

            if _G.AutoMultiWeight then useToolAndPunch("Weight") end
            if _G.AutoMultiPushups then useToolAndPunch("Pushups") end
            if _G.AutoMultiSitups then useToolAndPunch("Situps") end
            if _G.AutoMultiHandstands then useToolAndPunch("Handstands") end

            if _G.GamepassAutoLift then
                local evs = getREvents()
                if evs and evs:FindFirstChild("repEvent") then
                    pcall(function() evs.repEvent:FireServer("rep") end)
                end
            end

            if _G.FastRebirth or _G.AutoRebirthInf then
                local evs = getREvents()
                if evs and evs:FindFirstChild("rebirthRemote") then
                    pcall(function() evs.rebirthRemote:InvokeServer() end)
                end
            end

            if _G.AutoSize1_Farm or _G.SetSize1 then
                local evs = getREvents()
                if evs and evs:FindFirstChild("changeSizeRemote") then
                    pcall(function() evs.changeSizeRemote:FireServer(1) end)
                end
            end

            if _G.AutoSize2_Farm then
                local evs = getREvents()
                if evs and evs:FindFirstChild("changeSizeRemote") then
                    pcall(function() evs.changeSizeRemote:FireServer(2) end)
                end
            end

            if _G.AutoTeleportMuscleKing and char and char:FindFirstChild("HumanoidRootPart") and workspace:FindFirstChild("MuscleKing") then
                pcall(function() char.HumanoidRootPart.CFrame = workspace.MuscleKing.CFrame end)
            end

            if _G.AutoJungleBench then fireGymEvent("Jungle Bench Press") end
            if _G.AutoJungleSquat then fireGymEvent("Jungle Squat") end
            if _G.AutoJunglePullUps then fireGymEvent("Jungle Pull Ups") end
            if _G.AutoJungleFarm then
                fireGymEvent(jungleGyms[jungleFarmIndex])
                jungleFarmIndex = (jungleFarmIndex % #jungleGyms) + 1
            end

            if _G.AutoBenchPress then fireGymEvent("Bench Press") end
            if _G.AutoSquat then fireGymEvent("Squat") end
            if _G.AutoDeadlift then fireGymEvent("Deadlift") end
            if _G.AutoPullUp then fireGymEvent("Pull Up") end

            if _G.AutoOpenCrystal and _G.SelectedCrystal ~= "" then
                local evs = getREvents()
                if evs and evs:FindFirstChild("openCrystalRemote") then
                    pcall(function() evs.openCrystalRemote:InvokeServer(_G.SelectedCrystal) end)
                end
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

repeat wait() until game:IsLoaded() 
wait(0)

-- UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Halal Hub", "DarkTheme")
local Tab = Window:NewTab("Optimization")
local Section = Tab:NewSection("Boost FPS")

-- Auto Fast Mode
local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i,v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("MeshPart") then
        v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") and decalsyeeted then 
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then 
v.Lifetime = NumberRange.new(0)
    end
end

-- создание ScreenGui и loadingFrame
local function createLoadingScreen()

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "LoadingScreen"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    screenGui.IgnoreGuiInset = true


    local loadingFrame = Instance.new("Frame")
    loadingFrame.Size = UDim2.new(1, 0, 1, 0)
    loadingFrame.Position = UDim2.new(0, 0, 0, 0)
    loadingFrame.BackgroundColor3 = Color3.new(0, 0, 0) 
    loadingFrame.Parent = screenGui


    local loadingText = Instance.new("TextLabel")
    loadingText.Size = UDim2.new(1, 0, 0.1, 0)
    loadingText.Position = UDim2.new(0, 0, 0.45, 0)
    loadingText.BackgroundTransparency = 1 
    loadingText.TextColor3 = Color3.new(1, 1, 1) 
    loadingText.Text = "HALAL HUB"
    loadingText.Font = Enum.Font.SourceSans
    loadingText.TextSize = 300
    loadingText.Parent = loadingFrame
    loadingText.TextStrokeTransparency = 0

    return screenGui, loadingFrame
end

local screenGui, loadingFrame = createLoadingScreen()

-- Переключатель 
local toggleState = false
Section:NewToggle("3dRender", "3dRender", function(state)
    toggleState = state
    game:GetService("RunService"):Set3dRenderingEnabled(state)
    
    if state then
        screenGui:Destroy()
    else
        screenGui, loadingFrame = createLoadingScreen()
    end
end)

-- Скрыть скрипт
local Section2 = Tab:NewSection("Скрыть скрипт")

-- Бинд 
Section2:NewKeybind("Бинд на сворачивание скрипта", "Бинд на сворачивание скрипта", Enum.KeyCode.LeftAlt, function()
	Library:ToggleUI()
end)

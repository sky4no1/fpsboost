repeat wait() until game:IsLoaded() 
wait(20)

-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
-- Создать окно UI
local Window = Library.CreateLib("SKY4NO TOP", "DarkTheme")

-- Секция
local Tab = Window:NewTab("Ponn")

-- Подсекция
local Section = Tab:NewSection("optimization")

game:GetService("RunService"):Set3dRenderingEnabled(false)

-- Переключатель
Section:NewToggle("3dRender", "3dRender", function(state)
    if state then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    end
end)

local Section = Tab:NewSection("Скрыть скрипт")

Section:NewKeybind("Бинд на сворачивание скрипта", "Понн", Enum.KeyCode.LeftAlt, function()
	Library:ToggleUI()
end)

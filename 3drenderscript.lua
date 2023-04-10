-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
-- Создать окно UI
local Window = Library.CreateLib("SKY4NO TOP", "LightTheme")

-- Секция
local Tab = Window:NewTab("Ponn")

-- Подсекция
local Section = Tab:NewSection("optimization")

-- Переключатель
Section:NewToggle("3dRender", "3dRender", function(state)
    if state then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    else
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)

local Section = Tab:NewSection("Скрыть скрипт")

Section:NewKeybind("Бинд на сворачивание скрипта", "Понн", Enum.KeyCode.LeftAlt, function()
	Library:ToggleUI()
end)

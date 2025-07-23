-- Nebula Hub Loader 🌌
-- Este script carrega os módulos do hub

local HttpGet = game:HttpGet

-- Carrega os módulos do GitHub
local gui = loadstring(HttpGet("https://raw.githubusercontent.com/Nebulahub757/nebula-hub/main/src/gui.lua"))()
local autofarm = loadstring(HttpGet("https://raw.githubusercontent.com/Nebulahub757/nebula-hub/main/src/autofarm.lua"))()
local drag = loadstring(HttpGet("https://raw.githubusercontent.com/Nebulahub757/nebula-hub/main/src/mobile_drag.lua"))()

-- Inicializa a interface
gui:CreateUI()
drag:EnableDrag(gui.Frame)
gui:BindAutoFarm(autofarm.Start)

-- GUI do Nebula Hub 🌌
local module = {}

function module:CreateUI()
    local NebulaGUI = Instance.new("ScreenGui")
    NebulaGUI.Name = "NebulaHub"
    NebulaGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    NebulaGUI.ResetOnSpawn = false

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 300, 0, 200)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Parent = NebulaGUI

    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.Text = "Nebula Hub 🌌"
    Title.TextColor3 = Color3.fromRGB(0, 255, 0)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 24
    Title.Parent = Frame

    local AutoFarmBtn = Instance.new("TextButton")
    AutoFarmBtn.Size = UDim2.new(0.9, 0, 0, 40)
    AutoFarmBtn.Position = UDim2.new(0.05, 0, 0, 60)
    AutoFarmBtn.Text = "Auto Farm - Blox Fruits"
    AutoFarmBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    AutoFarmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoFarmBtn.Font = Enum.Font.Gotham
    AutoFarmBtn.TextSize = 18
    AutoFarmBtn.Parent = Frame

    self.Frame = Frame
    self.Button = AutoFarmBtn
end

function module:BindAutoFarm(callback)
    if self.Button then
        self.Button.MouseButton1Click:Connect(callback)
    end
end

return module

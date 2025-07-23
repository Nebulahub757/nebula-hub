-- Auto Farm do Nebula Hub 🌌
local module = {}

function module.Start()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local target = nil

    for _, obj in pairs(workspace:GetChildren()) do
        if obj:FindFirstChild("Humanoid") and obj:FindFirstChild("HumanoidRootPart") then
            target = obj
            break
        end
    end

    if target then
        character:WaitForChild("HumanoidRootPart").CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
        print("Auto Farm ativado em: " .. target.Name)
    else
        print("Nenhum NPC encontrado.")
    end
end

return module

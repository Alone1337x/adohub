-- Delta uyumlu script hub
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Humanoid = nil

repeat
    wait()
    if LocalPlayer.Character then
        Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    end
until Humanoid

print("Script Hub Başladı!")

-- Basit GUI (Delta destekli)
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(1, 0, 0.5, 0)
Button.Text = "Yazdır"
Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button.TextColor3 = Color3.new(1,1,1)

local Button2 = Instance.new("TextButton", Frame)
Button2.Position = UDim2.new(0, 0, 0.5, 0)
Button2.Size = UDim2.new(1, 0, 0.5, 0)
Button2.Text = "Hızlı Yap"
Button2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button2.TextColor3 = Color3.new(1,1,1)

Button.MouseButton1Click:Connect(function()
    print("Merhaba dünya!")
end)

Button2.MouseButton1Click:Connect(function()
    if Humanoid then
        Humanoid.WalkSpeed = 100
    end
end)

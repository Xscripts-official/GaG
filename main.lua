loadstring(game:HttpGet("https://raw.githubusercontent.com/Xscripts-official/EggRefresher/refs/heads/main/eggswapper"))()
-- LocalScript placed in StarterPlayerScripts

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GlitchedServerNotice"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 100)
frame.Position = UDim2.new(0.5, -200, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1
frame.Parent = screenGui

-- Create TextLabel
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -40, 1, 0)
label.Position = UDim2.new(0, 10, 0, 0)
label.BackgroundTransparency = 1
label.TextScaled = true
label.TextWrapped = true
label.Font = Enum.Font.SourceSansBold
label.Text = "⚠️ Re-execute the script if you got teleported on glitched server."
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Parent = frame

-- Create Close (X) Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.TextScaled = true
closeButton.Parent = frame

-- Close function
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

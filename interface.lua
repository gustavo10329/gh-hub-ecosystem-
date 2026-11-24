-- GH HUB PREMIUM
-- Interfaz visual de prueba para Roblox Studio

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "GHHUB"
gui.ResetOnSpawn = false

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.fromOffset(520, 350)
main.Position = UDim2.new(0.5, -260, 0.5, -175)
main.BackgroundColor3 = Color3.fromRGB(18, 12, 30)
main.BorderSizePixel = 0
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundTransparency = 1
title.Text = "GH HUB PREMIUM"
title.TextColor3 = Color3.fromRGB(190, 120, 255)
title.TextSize = 22
title.Font = Enum.Font.GothamBold
title.Parent = main

local function createButton(name, position, width)
    local button = Instance.new("TextButton")
    button.Size = UDim2.fromOffset(width, 32)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(65, 35, 100)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Text = name
    button.TextSize = 13
    button.Font = Enum.Font.GothamBold
    button.Parent = main

    local round = Instance.new("UICorner")
    round.CornerRadius = UDim.new(0, 7)
    round.Parent = button

    return button
end

createButton("SAVE", UDim2.fromOffset(15, 55), 90)
createButton("WEAPONS", UDim2.fromOffset(115, 55), 110)
createButton("REFRESH", UDim2.fromOffset(235, 55), 100)

createButton("OMEGA", UDim2.fromOffset(15, 105), 90)
createButton("LEGENDARY", UDim2.fromOffset(115, 105), 110)
createButton("EPIC", UDim2.fromOffset(235, 105), 90)

local info = Instance.new("TextLabel")
info.Size = UDim2.new(1, -30, 0, 120)
info.Position = UDim2.fromOffset(15, 155)
info.BackgroundColor3 = Color3.fromRGB(28, 20, 42)
info.TextColor3 = Color3.fromRGB(220, 210, 235)
info.Text = "LIVE ITEMS\n\nInterfaz de prueba: aún no conectada a datos reales."
info.TextSize = 15
info.Font = Enum.Font.Gotham
info.Parent = main

local infoCorner = Instance.new("UICorner")
infoCorner.CornerRadius = UDim.new(0, 8)
infoCorner.Parent = info

gui.Parent = player:WaitForChild("PlayerGui")

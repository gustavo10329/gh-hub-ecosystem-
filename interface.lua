
-- GH HUB PREMIUM
-- Ventana de acceso visual v2.0

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "GHHUB"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local function corner(object, radius)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, radius)
    c.Parent = object
end

local main = Instance.new("Frame")
main.Name = "LoginWindow"
main.Size = UDim2.fromOffset(340, 260)
main.Position = UDim2.new(0.5, -170, 0.5, -130)
main.BackgroundColor3 = Color3.fromRGB(18, 12, 30)
main.BorderSizePixel = 0
main.Parent = gui
corner(main, 14)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(125, 65, 190)
stroke.Thickness = 1.5
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 55)
title.BackgroundTransparency = 1
title.Text = "GH HUB PREMIUM"
title.TextColor3 = Color3.fromRGB(195, 130, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 23
title.Parent = main

local subtitle = Instance.new("TextLabel")
subtitle.Position = UDim2.fromOffset(0, 52)
subtitle.Size = UDim2.new(1, 0, 0, 25)
subtitle.BackgroundTransparency = 1
subtitle.Text = "PREMIUM ACCESS"
subtitle.TextColor3 = Color3.fromRGB(160, 145, 180)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 11
subtitle.Parent = main

local keyBox = Instance.new("TextBox")
keyBox.Name = "KeyInput"
keyBox.Position = UDim2.fromOffset(25, 105)
keyBox.Size = UDim2.new(1, -50, 0, 42)
keyBox.BackgroundColor3 = Color3.fromRGB(34, 25, 48)
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.PlaceholderText = "Introduce tu KEY..."
keyBox.PlaceholderColor3 = Color3.fromRGB(145, 130, 160)
keyBox.Text = ""
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 13
keyBox.ClearTextOnFocus = false
keyBox.Parent = main
corner(keyBox, 8)

local activate = Instance.new("TextButton")
activate.Name = "ActivateButton"
activate.Position = UDim2.fromOffset(25, 165)
activate.Size = UDim2.new(1, -50, 0, 40)
activate.BackgroundColor3 = Color3.fromRGB(105, 55, 165)
activate.Text = "ACTIVATE"
activate.TextColor3 = Color3.fromRGB(255, 255, 255)
activate.Font = Enum.Font.GothamBold
activate.TextSize = 14
activate.Parent = main
corner(activate, 8)

local status = Instance.new("TextLabel")
status.Name = "Status"
status.Position = UDim2.fromOffset(15, 215)
status.Size = UDim2.new(1, -30, 0, 25)
status.BackgroundTransparency = 1
status.Text = "Esperando KEY..."
status.TextColor3 = Color3.fromRGB(180, 165, 200)
status.Font = Enum.Font.Gotham
status.TextSize = 11
status.Parent = main

activate.MouseButton1Click:Connect(function()
    if keyBox.Text == "" then
        status.Text = "Introduce una KEY."
        status.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end

    status.Text = "Validación Panda Auth pendiente."
    status.TextColor3 = Color3.fromRGB(255, 190, 90)
end)

print("GH HUB PREMIUM - Login visual cargado")

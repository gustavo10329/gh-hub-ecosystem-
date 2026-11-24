-- GH HUB PREMIUM
-- Interfaz visual de servidores

local ServerUI = {}

function ServerUI.Create(parent)
    local panel = Instance.new("Frame")
    panel.Name = "ServerList"
    panel.Size = UDim2.new(1, -30, 1, -20)
    panel.Position = UDim2.fromOffset(15, 10)
    panel.BackgroundColor3 = Color3.fromRGB(24, 17, 36)
    panel.BorderSizePixel = 0
    panel.Parent = parent

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.BackgroundTransparency = 1
    title.Text = "PUBLIC SERVERS"
    title.TextColor3 = Color3.fromRGB(195, 130, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18
    title.Parent = panel

    local message = Instance.new("TextLabel")
    message.Name = "Status"
    message.Position = UDim2.fromOffset(10, 50)
    message.Size = UDim2.new(1, -20, 0, 60)
    message.BackgroundTransparency = 1
    message.Text = "Server browser ready\nNo live server data connected"
    message.TextColor3 = Color3.fromRGB(190, 180, 205)
    message.Font = Enum.Font.Gotham
    message.TextSize = 13
    message.Parent = panel

    return panel
end

return ServerUI

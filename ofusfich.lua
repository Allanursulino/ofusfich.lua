-- Cria a ScreenGui principal
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UpdateGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Cria o Frame principal
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 400, 0, 250)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0) -- Centralizado usando AnchorPoint
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)  -- Ponto de ancoragem no centro
mainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Adiciona cantos arredondados
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = mainFrame

-- Cria o texto de atualização
local updateText = Instance.new("TextLabel")
updateText.Name = "UpdateText"
updateText.Size = UDim2.new(0.8, 0, 0.4, 0)
updateText.Position = UDim2.new(0.1, 0, 0.1, 0)
updateText.BackgroundTransparency = 1
updateText.Text = "The script has moved to a new code!\n\nTo get the updated version, please join our Discord server."
updateText.TextColor3 = Color3.fromRGB(255, 255, 255)
updateText.TextScaled = true
updateText.Font = Enum.Font.Gotham
updateText.TextWrapped = true
updateText.TextYAlignment = Enum.TextYAlignment.Top
updateText.Parent = mainFrame

-- Cria o botão do Discord
local discordButton = Instance.new("TextButton")
discordButton.Name = "DiscordButton"
discordButton.Size = UDim2.new(0.6, 0, 0.3, 0)
discordButton.Position = UDim2.new(0.2, 0, 0.55, 0)
discordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242) -- Cor do Discord
discordButton.Text = "JOIN OUR DISCORD"
discordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
discordButton.TextScaled = true
discordButton.Font = Enum.Font.GothamBold
discordButton.Parent = mainFrame

-- Adiciona cantos arredondados no botão
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = discordButton

-- Adiciona efeito de hover no botão
discordButton.MouseEnter:Connect(function()
    discordButton.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
end)

discordButton.MouseLeave:Connect(function()
    discordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
end)

-- Função para copiar o link do Discord
discordButton.MouseButton1Click:Connect(function()
    -- Tenta usar o setclipboard se disponível
    if setclipboard then
        setclipboard("https://discord.gg/qfR6HbJqmY")
        
        -- Feedback visual
        local originalText = discordButton.Text
        discordButton.Text = "COPIED!"
        discordButton.BackgroundColor3 = Color3.fromRGB(67, 181, 129)
        
        wait(2)
        
        discordButton.Text = originalText
        discordButton.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
    else
        -- Se setclipboard não estiver disponível, apenas mostra o link
        discordButton.Text = "https://discord.gg/qfR6HbJqmY"
        
        wait(3)
        
        discordButton.Text = "JOIN OUR DISCORD"
    end
end)

-- Adiciona uma sombra sutil
local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(20, 20, 20)
uiStroke.Thickness = 2
uiStroke.Parent = mainFrame

print("Update GUI loaded and centered! Join our Discord: https://discord.gg/qfR6HbJqmY")

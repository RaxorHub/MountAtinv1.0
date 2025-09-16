-- // GUI Mount Atin [UPDATE] V2
-- Ambil aja cuy 🗿

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")

-- Hapus GUI lama kalau ada
if CoreGui:FindFirstChild("MountAtinV2") then
    CoreGui:FindFirstChild("MountAtinV2"):Destroy()
end

-- ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MountAtinV2"
screenGui.Parent = CoreGui

-- Frame utama
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 200)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) -- tema dark
mainFrame.BorderSizePixel = 2
mainFrame.BorderColor3 = Color3.fromRGB(255, 255, 255) -- tepi putih
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Buat bulat sudut
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = mainFrame

-- Judul
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "Mount Atin [UPDATE] V2"
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Parent = mainFrame

-- Link WhatsApp
local linkLabel = Instance.new("TextLabel")
linkLabel.Size = UDim2.new(1, -20, 0, 50)
linkLabel.Position = UDim2.new(0, 10, 0, 50)
linkLabel.BackgroundTransparency = 1
linkLabel.Text = "https://whatsapp.com/channel/0029VaknKj7Id7nFcUaOlZ2S\nJOIN SALURAN KALAU MAU SCRIPT NYA"
linkLabel.Font = Enum.Font.Gotham
linkLabel.TextSize = 14
linkLabel.TextWrapped = true
linkLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
linkLabel.Parent = mainFrame

-- Tombol COPY
local copyBtn = Instance.new("TextButton")
copyBtn.Size = UDim2.new(0.4, 0, 0, 40)
copyBtn.Position = UDim2.new(0.05, 0, 0.6, 0)
copyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
copyBtn.Text = "COPY"
copyBtn.Font = Enum.Font.GothamBold
copyBtn.TextSize = 16
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.Parent = mainFrame
local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 10)
copyCorner.Parent = copyBtn

-- Tombol TIKTOK
local tiktokBtn = Instance.new("TextButton")
tiktokBtn.Size = UDim2.new(0.4, 0, 0, 40)
tiktokBtn.Position = UDim2.new(0.55, 0, 0.6, 0)
tiktokBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
tiktokBtn.Text = "TIKTOK"
tiktokBtn.Font = Enum.Font.GothamBold
tiktokBtn.TextSize = 16
tiktokBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
tiktokBtn.Parent = mainFrame
local tiktokCorner = Instance.new("UICorner")
tiktokCorner.CornerRadius = UDim.new(0, 10)
tiktokCorner.Parent = tiktokBtn

-- Fungsi copy ke clipboard
local function setClipboard(text)
    if typeof(setclipboard) == "function" then
        setclipboard(text)
    elseif typeof(toclipboard) == "function" then
        toclipboard(text)
    else
        warn("Clipboard function not supported")
    end
end

-- Fungsi buat notifikasi
local function showNotification(msg)
    local notif = Instance.new("TextLabel")
    notif.Size = UDim2.new(0, 250, 0, 40)
    notif.Position = UDim2.new(1, -260, 1, -60) -- pojok kanan bawah
    notif.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    notif.Text = msg
    notif.Font = Enum.Font.GothamBold
    notif.TextSize = 14
    notif.TextColor3 = Color3.fromRGB(255, 255, 255)
    notif.TextWrapped = true
    notif.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 8)
    corner.Parent = notif

    -- Tween efek hilang
    task.spawn(function()
        wait(3)
        for i = 0, 1, 0.05 do
            notif.TextTransparency = i
            notif.BackgroundTransparency = i
            wait(0.05)
        end
        notif:Destroy()
    end)
end

-- Event tombol COPY
copyBtn.MouseButton1Click:Connect(function()
    setClipboard("https://whatsapp.com/channel/0029VaknKj7Id7nFcUaOlZ2S")
    showNotification("✅ Link WhatsApp berhasil dicopy!")
end)

-- Event tombol TIKTOK
tiktokBtn.MouseButton1Click:Connect(function()
    local link = "https://www.tiktok.com/@xrazor12_?_t=ZS-8zkHR8DEwMs&_r=1"
    setClipboard(link)
    showNotification("✅ Link TikTok berhasil dicopy!")
end)

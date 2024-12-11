wait(5.5)
local ba = Instance.new("ScreenGui")
local ca = Instance.new("TextLabel")
local da = Instance.new("Frame")
local _b = Instance.new("TextLabel")
local ab = Instance.new("TextLabel")
ba.Parent = game.CoreGui
ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ca.Parent = ba
ca.Active = true
ca.BackgroundColor3 = Color3.new(0, 0, 0) -- สีพื้นหลังดำ
ca.Draggable = true
ca.Position = UDim2.new(0.7, 0, 0.1, 0)
ca.Size = UDim2.new(0, 200, 0, 40) -- ลดขนาด
ca.Font = Enum.Font.SourceSansSemibold
ca.Text = "Anti AFK Kick Script"
ca.TextColor3 = Color3.new(1, 1, 0) -- สีข้อความเหลือง
ca.TextSize = 18
da.Parent = ca
da.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1) -- สีพื้นหลังดำเข้ม
da.Position = UDim2.new(0, 0, 1.2, 0)
da.Size = UDim2.new(0, 200, 0, 80) -- ลดขนาด
_b.Parent = da
_b.BackgroundColor3 = Color3.new(0, 0, 0)
_b.Position = UDim2.new(0, 0, 0.7, 0)
_b.Size = UDim2.new(0, 200, 0, 20) -- ลดขนาด
_b.Font = Enum.Font.Arial
_b.Text = "Made By Jeab"
_b.TextColor3 = Color3.new(1, 1, 0)
_b.TextSize = 16
ab.Parent = da
ab.BackgroundColor3 = Color3.new(0, 0, 0)
ab.Position = UDim2.new(0, 0, 0.2, 0)
ab.Size = UDim2.new(0, 200, 0, 30) -- ลดขนาด
ab.Font = Enum.Font.ArialBold
ab.Text = "Status: Script Started"
ab.TextColor3 = Color3.new(1, 1, 0)
ab.TextSize = 16
local bb = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    ab.Text = "You went idle and ROBLOX tried to kick you but we reflected it!"
    wait(2)
    ab.Text = "Script Re-Enabled"
end)

--[[
    Custom 3-Second Fly Script 
    Style: Matcha/Western
]]

-- التأكد من أن السكربت يعمل في البيئة الصحيحة
if not game:IsLoaded() then game.Loaded:Wait() end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

-- إعداد واجهة صغيرة تظهر عند التشغيل
local sg = Instance.new("ScreenGui", game.CoreGui)
local frame = Instance.new("Frame", sg)
frame.Size = UDim2.new(0, 200, 0, 40)
frame.Position = UDim2.new(0.5, -100, 0.1, 0)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0

local label = Instance.new("TextLabel", frame)
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundTransparency = 1
label.Text = "FLIGHT ACTIVATED (3s)"
label.TextColor3 = Color3.fromRGB(0, 255, 150) -- لون أخضر "ماتشا"
label.TextSize = 14
label.Font = Enum.Font.Offset

-- إضافة زوايا دائرية
local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 8)

-- وظيفة الطيران
local function startFly()
    -- استخدام BodyVelocity (الأكثر استقراراً في Western)
    local bv = Instance.new("BodyVelocity")
    bv.Name = "MatchaFastFly"
    bv.Parent = root
    bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
    
    -- الاتجاه: للأمام (بناءً على نظرة اللاعب) مع ارتفاع بسيط
    bv.Velocity = root.CFrame.LookVector * 75 + Vector3.new(0, 35, 0)
    
    -- الانتظار 3 ثواني بالظبط
    task.wait(3)
    
    -- تنظيف كل شيء
    bv:Destroy()
    sg:Destroy()
end

-- تشغيل السكربت
task.spawn(startFly)

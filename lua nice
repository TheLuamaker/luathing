-- Matcha Style: 3 Seconds Fly
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

-- بداية الطيران
local bv = Instance.new("BodyVelocity")
bv.Name = "StableFly"
bv.Parent = root
bv.MaxForce = Vector3.new(1e6, 1e6, 1e6)
bv.Velocity = root.CFrame.LookVector * 70 + Vector3.new(0, 30, 0)

-- الانتظار 3 ثواني
task.wait(3)

-- إيقاف الطيران
bv:Destroy()

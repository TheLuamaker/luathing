local p = game.Players.LocalPlayer
local sg = Instance.new("ScreenGui", p.PlayerGui)
sg.ResetOnSpawn = false

local btn = Instance.new("TextButton", sg)
btn.Size = UDim2.new(0, 120, 0, 45)
btn.Position = UDim2.new(0.5, -60, 0.85, 0)
btn.BackgroundColor3 = Color3.fromRGB(255, 215, 0)
btn.Text = "☠ Jump"
btn.TextColor3 = Color3.fromRGB(0,0,0)
btn.Font = Enum.Font.GothamBold
btn.TextSize = 16

Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 10)

btn.MouseButton1Click:Connect(function()
    local c = p.Character
    if c then
        local h = c:FindFirstChildOfClass("Humanoid")
        if h then h:ChangeState(Enum.HumanoidStateType.Jumping) end
    end
end)

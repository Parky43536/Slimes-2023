
local slime = workspace:WaitForChild("Slime")
local character = workspace:WaitForChild("Parky43536")

local dist = 10
local time = 0.5

local function Leap(slime, character)
    local g = Vector3.new(0, -game.Workspace.Gravity, 0)
    local x0 = slime.CFrame * Vector3.new(0, 2, -2)
    local v0 = (character:GetPivot().Position - x0 - 0.5 * g * time * time) / time

    slime.Velocity = v0;
    slime.CFrame = CFrame.new(x0);
end

while true do
    task.wait(1)

    if (slime.Position - character:GetPivot().Position).Magnitude > dist then
        Leap(slime, character)
    end
end



local plr = game.Players.LocalPlayer
local char = plr.Character or player.CharacterAdded:Wait() 
local humanroot = char:WaitForChild("HumanoidRootPart")
local merchant = CFrame.new(-44.0604324, 751.102356, -265.169037, -0.999018073, 0.0152015463, -0.0416161083, 0.0148308426, 0.999847651, 0.00920201559, 0.0417496525, 0.00857577752, -0.999091268)

if game.PlaceId == 12886143095 then
    merchant = CFrame.new(-32.7522049, 5, -49.2985115, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    humanroot.CFrame = merchant
elseif game.PlaceId == 18583778121 then
    merchant = CFrame.new(-94.9199982, 729.262512, 14.6135693, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    humanroot.CFrame = merchant
end

wait(getgenv().Wait)
local VirtualInputManager = game:GetService("VirtualInputManager")
local function autoKeyPress(keyCode)
    VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
    task.wait()
    VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
end

function loopEnter()
    for i = 1, 20 do
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
        task.wait()
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
        task.wait() 
    end
end

function clickTP()
    autoKeyPress(Enum.KeyCode.BackSlash)
    autoKeyPress(Enum.KeyCode.Left)
    autoKeyPress(Enum.KeyCode.Down)
    autoKeyPress(Enum.KeyCode.Return)
end


autoKeyPress(Enum.KeyCode.Tab)

autoKeyPress(Enum.KeyCode.BackSlash)
autoKeyPress(Enum.KeyCode.Left)
autoKeyPress(Enum.KeyCode.Return)
autoKeyPress(Enum.KeyCode.Down)
loopEnter()
autoKeyPress(Enum.KeyCode.Left)
loopEnter()
autoKeyPress(Enum.KeyCode.Left)
loopEnter()
autoKeyPress(Enum.KeyCode.Left)
loopEnter()
autoKeyPress(Enum.KeyCode.BackSlash)

if game.PlaceId == 12886143095 then
    local merchant = CFrame.new(-123.566498, 23.682478, -33.8405685, 0.573598742, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, 0.573598742)
    humanroot.CFrame = merchant
    wait(1)
    clickTP()
elseif game.PlaceId == 18583778121 then
    local merchant = CFrame.new(-44.0604324, 751.102356, -265.169037, -0.999018073, 0.0152015463, -0.0416161083, 0.0148308426, 0.999847651, 0.00920201559, 0.0417496525, 0.00857577752, -0.999091268)
    humanroot.CFrame = merchant
    wait(1)
    clickTP()
end

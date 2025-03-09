local repo = 'https://raw.githubusercontent.com/KINGHUB01/Gui/main/'
local Library = loadstring(game:HttpGet(repo ..'Gui%20Lib%20%5BLibrary%5D'))()
local ThemeManager = loadstring(game:HttpGet(repo ..'Gui%20Lib%20%5BThemeManager%5D'))()
local SaveManager = loadstring(game:HttpGet(repo ..'Gui%20Lib%20%5BSaveManager%5D'))()

local Options = getgenv().Linoria.Options
local Toggles = getgenv().Linoria.Toggles
local Window = Library:CreateWindow({

	Title = 'X Rank-Equip :海战[Chinese]',
	Center = true,
	AutoShow = true,
	Resizable = true,
	ShowCustomCursor = true,
	TabPadding = 8,
	MenuFadeTime = 0.2
})
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local GG = {}
local HH = {}
local LL = false
local workspace = game:GetService("Workspace")
local aaaaa = game.Players.LocalPlayer.Character
local CFramea = Vector3.new(Value)
local swim = Value
local blood = Value
local play = ""
local speeds = 5
local nowe = false
local tpwalking = false
local speaker = game:GetService("Players").LocalPlayer
local heartbeat = game:GetService("RunService").Heartbeat
local function updatespeed(char, hum)
	if nowe == true then
		tpwalking = false
		heartbeat:Wait()
		task.wait(.1)
		heartbeat:Wait()

		for i = 1, speeds do
			spawn(function()
				tpwalking = true

				while tpwalking and heartbeat:Wait() and char and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						char:TranslateBy(hum.MoveDirection)
					end
				end
			end)
		end
	end
end
speaker.CharacterAdded:Connect(function(char)
	local char = speaker.Character
	if char then
		task.wait(0.7)
		char.Humanoid.PlatformStand = false
		char.Animate.Disabled = false
	end
end)
local mainloop = false
local message = ""
local moneyitem = ""
local itemsConnection
local EnemyConnection
local buildConnection
local zombieConnection
local bankConnection
function Notification(Title, Text, dur)
game:GetService("StarterGui"):SetCore("SendNotification",{Title = Title,Text = Text,Duration = dur,})
end
local speaker = game:GetService("Players").LocalPlayer
local aaa = {
bbb = Value,
ccc = Value,
vvv = Value,
xxx = game:GetService('Lighting').FogEnd
}
local bai = {
autosay = false,
autojume = false,
autofly = false,
autohide = false,
pro = false,
bro = false,
zzz = false
}
local play = {
aaa = ""
}

local Tabs = {
	Main = Window:AddTab('调试'),
	ESP = Window:AddTab('ESP'),
	XXZ = Window:AddTab('其余'),
	sb = Window:AddTab('娱乐'),
	['UI Settings'] = Window:AddTab('UI控制'),
}
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('人物属性')
local RightGroupbox = Tabs.Main:AddRightGroupbox('视角');
local aRightGroupbox = Tabs.Main:AddRightGroupbox('玩家');
local bbb = Tabs.XXZ:AddLeftGroupbox('特殊的人物属性')
local sz = Tabs.XXZ:AddRightGroupbox('杂物')
local esp = Tabs.ESP:AddLeftGroupbox('透视')
local Lol = Tabs.sb:AddLeftGroupbox('枪械模型')
local HAHA = Tabs.sb:AddRightGroupbox('旋转')
local ez = Tabs.sb:AddRightGroupbox('枪械音效');
LeftGroupBox:AddToggle('MyToggle', {
	Text = '开启速度',
	Default = true, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
    if state then
        bai.autosay = true
        while task.wait() do
            if bai.autosay == true then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = aaa.bbb

            end
        end
    else
    bai.autosay = false
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
	end
})
Toggles.MyToggle:SetValue(false)
LeftGroupBox:AddSlider('MySlider', {
	Text = '速度',
	Default = 16,
	Min = 0,
	Max = 200,
	Rounding = 0,
	Compact = false,

	Callback = function(Value)
		aaa.bbb = Value
	end
})
LeftGroupBox:AddToggle('MyToggle', {
	Text = '开启跳跃',
	Default = true, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
    if state then
        bai.autojume = true
        while task.wait() do
            if bai.autojume == true then
                game.Players.LocalPlayer.Character.Humanoid.JumpHeight = aaa.ccc
game.Players.LocalPlayer.Character.Humanoid.JumpPower = aaa.ccc
            end
        end
    else
    bai.autojume = false
       game.Players.LocalPlayer.Character.Humanoid.JumpHeight = 7.2
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
	end
})
Toggles.MyToggle:SetValue(false)
LeftGroupBox:AddSlider('MySlider', {
	Text = '跳跃',
	Default = 50,
	Min = 0,
	Max = 500,
	Rounding = 0,
	Compact = false,

	Callback = function(Value)
		aaa.ccc = Value
	end
})

LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('mytoggle', {
    Text = '开关飞行',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
local char = speaker.Character
	if not char or not char.Humanoid then
		return
	end

	local hum = char.Humanoid
	if nowe == true then
		nowe = false

		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)	
	else
		nowe = true
		updatespeed(char, hum)

		char.Animate.Disabled = true
		for i,v in next, hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end

		hum:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		hum:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		hum:ChangeState(Enum.HumanoidStateType.Swimming)
	end
    
    local function CheckRig()
        if speaker.Character and speaker.Character:FindFirstChild("Torso") then
                return speaker.Character.Torso
        elseif speaker.Character and speaker.Character:FindFirstChild("LowerTorso") then
                return speaker.Character.LowerTorso
        end
    end


	local UpperTorso = CheckRig()
	local flying = true
	local deb = true
	local ctrl = {f = 0, b = 0, l = 0, r = 0}
	local lastctrl = {f = 0, b = 0, l = 0, r = 0}
	local maxspeed = 50
	local speed = 0

	local bg = Instance.new("BodyGyro", UpperTorso)
	bg.P = 9e4
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
	bg.cframe = UpperTorso.CFrame

	local bv = Instance.new("BodyVelocity", UpperTorso)
	bv.velocity = Vector3.new(0,0.1,0)
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9)

	if nowe == true then
		hum.PlatformStand = true
	end

	while nowe == true or hum.Health == 0 do
		task.wait()

		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			speed = speed+.5+(speed/maxspeed)
			if speed > maxspeed then
				speed = maxspeed
			end
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
			speed = speed-1
			if speed < 0 then
				speed = 0
			end
		end
		if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
		elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
		else
			bv.velocity = Vector3.new(0,0,0)
		end

		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
	end

	ctrl = {f = 0, b = 0, l = 0, r = 0}
	lastctrl = {f = 0, b = 0, l = 0, r = 0}
	speed = 0
	bg:Destroy()
	bv:Destroy()

	hum.PlatformStand = false
	char.Animate.Disabled = false
	tpwalking = false
    end
})

local MyButton = LeftGroupBox:AddButton({
	Text = '飞行+1',
	Func = function()
    local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		speeds = speeds + 1
		updatespeed(char, hum)
		Library:Notify("速度成功加1", nil, 4590657391)
		end
	end,
	DoubleClick = false,
	Tooltip = '...'
})

local MyButton = LeftGroupBox:AddButton({
	Text = '速度-1',
	Func = function()
		local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		if speeds > 1 then
			speeds = speeds - 1
			updatespeed(char, hum)
			Library:Notify("速度成功减1", nil, 4590657391)
		end
    end
	end,
	DoubleClick = false,
	Tooltip = '你已经点击速度减小'
})

LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('MyToggle', {
	Text = '穿墙',
	Default = true, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
       local player = game.Players.LocalPlayer
        local char = player.Character
        local runService = game:GetService("RunService")
        if state then
            _G.NoClip = runService.Stepped:Connect(function()
                for _, v in pairs(char:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end)
        else
            if _G.NoClip then
                _G.NoClip:Disconnect()
                _G.NoClip = nil
            end
            for _, v in pairs(char:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = true
                end
            end
        end
        end
})
Toggles.MyToggle:SetValue(false)

LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('MyToggle', {
	Text = '开启无限跳',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
    Jump = state
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
	end
})

LeftGroupBox:AddToggle('MyToggle', {
	Text = '秒互动 (懒得做关闭了)',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(Value)
if state then
        bai.pro = true
        while task.wait() do
            if bai.pro == true then
               for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
	if v:IsA("ProximityPrompt") then
		v["HoldDuration"] = 0
	end
end


game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(v)
    v["HoldDuration"] = 0
end)
            end
        end
    else
    bai.pro = false
       print("aaaaa")
        end
	end
})

LeftGroupBox:AddToggle('MyToggle', {
	Text = '无视虚空伤害',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(Value)
if Value then
      game:GetService("Workspace").FallenPartsDestroyHeight = (0 / 0)
    else
    bai.bro = false
      game:GetService("Workspace").FallenPartsDestroyHeight = (1 / 1)
        end
	end
})

RightGroupbox:AddToggle('MyToggle', {
	Text = '高亮',
	Default = true, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
	    if state then
        bai.autohide = true
        while task.wait() do
            if bai.autohide == true then
                game.Lighting.Ambient = Color3.new(1, 1, 1)
      game.Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
      game.Lighting.ColorShift_Top = Color3.new(1, 1, 1)
            end
        end
    else
    bai.autohide = false
       game.Lighting.Ambient = Color3.new(0, 0, 0)
      game.Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
      game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
        end
        end
})
Toggles.MyToggle:SetValue(false)
RightGroupbox:AddToggle('MyToggle', {
	Text = '没有雾',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
	    if state then
        bai.autohide = true
        while task.wait() do
            if bai.autohide == true then
               game:GetService('Lighting').FogEnd = 1000000;
            end
        end
    else
    bai.autohide = false
       game:GetService('Lighting').FogEnd = aaa.xxx
        end
        end
})
RightGroupbox:AddToggle('MyToggle', {
	Text = '简单的画质 (也没有关闭)',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
	    if state then
	    for i,v in game.Workspace:GetDescendants() do
    if v:IsA('BasePart') then
    if v.Material == Enum.Material.Foil or v.Material == Enum.Material.Neon or v.Material == Enum.Material.Glacier or v.Material == Enum.Material.Ice then
        else
        v.Material = Enum.Material.Foil
        end
    end
    end
game.Workspace.DescendantAdded:Connect(function(v)
    if v:IsA('BasePart') then
    if v.Material == Enum.Material.Foil or v.Material == Enum.Material.Neon or v.Material == Enum.Material.Glacier or v.Material == Enum.Material.Ice then
        else
        v.Material = Enum.Material.Foil
        end
    end
for _, v in pairs(workspace:GetDescendants()) do
    if v:IsA('BasePart') then
        if v.Material == Enum.Material.Foil or v.Material == Enum.Material.Neon or v.Material == Enum.Material.Glacier or v.Material == Enum.Material.Foil then
        else
            v.Color = Color3.new(0.5, 0.75, 1) -- Цвет голубой (RGB: 128, 192, 255)
        end
    end
end

end)
else
print("1451421")
        end
        end
})

aRightGroupbox:AddDropdown('选择玩家', {
	SpecialType = 'Player',
	Text = '选择玩家',
	Tooltip = '..', -- 悬停在下拉菜单上时显示的信息

	Callback = function(value)
	play = value
        Library:Notify(value, nil, 4590657391)
	end
})
local MyButton = aRightGroupbox:AddButton({
	Text = '传送',
	Func = function()
local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(play)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        HumRoot.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        Library:Notify("成功", nil, 4590657391)
    else
       Library:Notify("玩家退出", nil, 4590657391)
    end
	end,
	DoubleClick = false,
	Tooltip = '...'
})

local MyButton = aRightGroupbox:AddButton({
	Text = '把玩家传送到你的龟头上',
	Func = function()
	local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(play)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        tp_player.Character.HumanoidRootPart.CFrame = HumRoot.CFrame + Vector3.new(0, 3, 0)
        Library:Notify("成功", nil, 4590657391)
    else
       Library:Notify("玩家退出", nil, 4590657391)
    end
	end,
	DoubleClick = false,
	Tooltip = '...'
})

aRightGroupbox:AddToggle('MyToggle', {
	Text = '循环传送玩家',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(Value)
	    if Value then
        local localPlayer = game.Players.LocalPlayer
        local targetPlayer = game.Players:FindFirstChild(play)
        if localPlayer and targetPlayer and localPlayer.Character and targetPlayer.Character then
            local function doTeleport()
                local HumRoot = localPlayer.Character.HumanoidRootPart
                local tp_player = targetPlayer.Character.HumanoidRootPart
                HumRoot.CFrame = tp_player.CFrame + Vector3.new(0, 3, 0)
            end
            
            local RunService = game:GetService("RunService")
            local teleportTimer = 0
            local teleportInterval = 0.01  
            teleportConnection = RunService.Heartbeat:Connect(function(dt)
                teleportTimer = teleportTimer + dt
                if teleportTimer >= teleportInterval then
                    doTeleport()
                    teleportTimer = 0
                end
            end)
            
        else
           Library:Notify("成功", nil, 4590657391)
        end
    else
        
        if teleportConnection then
            teleportConnection:Disconnect()
            teleportConnection = nil
        end
       Library:Notify("停止", nil, 4590657391)
    end
        end
})

aRightGroupbox:AddToggle('MyToggle', {
	Text = '查看玩家',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
	    if state then
        game:GetService('Workspace').CurrentCamera.CameraSubject =
            game:GetService('Players'):FindFirstChild(play).Character.Humanoid
            Library:Notify("成功", nil, 4590657391)
    else
       Library:Notify("玩家退出", nil, 4590657391)
        local lp = game.Players.LocalPlayer
        game:GetService('Workspace').CurrentCamera.CameraSubject = lp.Character.Humanoid
    end
        end
})

esp:AddToggle('MyToggle', {
    Text = '玩家esp',
    Default = false,-- 默认值:true=允许，false=不允许
    Tooltip = 'esp',-- 悬停在切换按钮上时显示的信息
    
    Callback = function(state)
        LL = state
        if LL then
        if _G.II then return end
        _G.II = true
                    local function OO(backgroundColor)
                    local PP = 0.299 * backgroundColor.r + 0.587 * backgroundColor.g + 0.114 * backgroundColor.b
                    return PP > 0.5 and Color3.new(0,0,0) or Color3.new(1,1,1)
                    end
                    local function Cresp(targetPlayer)
                    if targetPlayer == LocalPlayer then return end
                    local function UpdateDisplay(char)
                    if GG[targetPlayer] then return end
                    local NN = targetPlayer.Team and targetPlayer.Team.TeamColor.Color or Color3.new(1,1,1)
                    local MM = OO(NN)
                    local HH = Instance.new("Highlight")
                    HH.OutlineColor = Color3.new(0,0,0)
                    HH.FillColor = NN
                    HH.FillTransparency = 0.8
                    local BB = Instance.new("BillboardGui")
                    local TL = Instance.new("TextLabel")
                    BB.Adornee = char:WaitForChild("Head")
                    BB.Size = UDim2.new(0, 150, 0, 40)
                    BB.StudsOffset = Vector3.new(0,2.5,0)
                    TL.Size = UDim2.new(1,0,1,0)
                    TL.BackgroundTransparency = 1
                    TL.TextColor3 = NN
                    TL.TextStrokeColor3 = MM
                    TL.TextStrokeTransparency = 0
                    TL.TextSize = 10
                    TL.Parent = BB
                    local Hum = char:WaitForChild("Humanoid")
                    Hum.Died:Connect(function()
                    HH:Destroy()
                    BB:Destroy()
                    GG[targetPlayer] = nil
                    end)                 
                    local UC
                    UC = RunService.Heartbeat:Connect(function()
                    if not char:FindFirstChild("Head") then return end
                    local CN = targetPlayer.Team and targetPlayer.Team.TeamColor.Color or Color3.new(1,1,1)
                    local CM = OO(CN)
                    HH.FillColor = CN
                    TL.TextColor3 = CN
                    TL.TextStrokeColor3 = CM
                    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Head") then
                    local dist = (char.Head.Position - LocalPlayer.Character.Head.Position).Magnitude
                        TL.Text = string.format("%s\n%dHP (%.1fm)", targetPlayer.Name, math.floor(Hum.Health), dist)
                    end
end)
                    HH.Parent = char
                    BB.Parent = char
                    GG[targetPlayer] = {HH, BB, UC}
                end
                if targetPlayer.Team then
                targetPlayer.Team.Changed:Connect(function()
                if targetPlayer.Character then
                UpdateDisplay(targetPlayer.Character)
                    end
end)
                    end
                if targetPlayer.Character then
                UpdateDisplay(targetPlayer.Character)
                    end
                targetPlayer.CharacterAdded:Connect(UpdateDisplay)
                    end
            Players.PlayerAdded:Connect(function(player)
            Cresp(player)
end)
            Players.PlayerRemoving:Connect(function(player)
             if GG[player] then
             for _,obj in ipairs(GG[player]) do
             if typeof(obj) == "Instance" then
             obj:Destroy()
             elseif typeof(obj) == "RBXScriptConnection" then
             obj:Disconnect()
                    end
                    end
             GG[player] = nil
                    end
end)
            for _,player in ipairs(Players:GetPlayers()) do
            Cresp(player)
                    end
                else
                if _G.II then
                _G.II = nil
                for player, objects in pairs(GG) do
                for _,obj in ipairs(objects) do
                if typeof(obj) == "Instance" then
                obj:Destroy()
                elseif typeof(obj) == "RBXScriptConnection" then
                obj:Disconnect()
                end
            end
        end
GG = {}
    end
end
end
})

sz:AddToggle('Main', {
    Text = '炮弹删除',
    Default = false,
    Tooltip = '删除',
    Callback = function()
    while false do
    game:GetService("Workspace").Explosion:Destroy()
    end
    end
})

sz:AddToggle('Main', {
    Text = '港口不死亡',
    Default = false,
    Tooltip = '删除',
    Callback = function()
    game:GetService("Workspace").JapanDock.MainBody.TouchInterest:Destroy()
workspace.JapanDock.Decoration.ConcreteBases:GetChildren()[3].TouchInterest:Destroy()
game:GetService("Workspace").JapanDock.Decoration.ConcreteBases.ConcreteBase.TouchInterest:Destroy()
workspace.JapanDock.Decoration.ConcreteBases:GetChildren()[2].TouchInterest:Destroy()
workspace.JapanDock.Decoration.ConcreteBases:GetChildren()[5].TouchInterest:Destroy()
workspace.JapanDock.Decoration.ConcreteBases.ConcreteEdge.TouchInterest:Destroy()
workspace.USDock.MainBody.TouchInterest:Destroy()
workspace.USDock.Decoration.ConcreteBases:GetChildren()[3].TouchInterest:Destroy()
game:GetService("Workspace").USDock.Decoration.ConcreteBases.ConcreteBase.TouchInterest:Destroy()
workspace.USDock.Decoration.ConcreteBases:GetChildren()[2].TouchInterest:Destroy()
workspace.USDock.Decoration.ConcreteBases:GetChildren()[5].TouchInterest:Destroy()
workspace.USDock.Decoration.ConcreteBases.ConcreteEdge.TouchInterest:Destroy()
    end
})

bbb:AddToggle('Main', {
    Text = '自动传送[残血]',
    Default = false,
    Tooltip = '传送至出生点',
    Callback = function(Value)
    paolu1 = Value
        if paolu1 then
            paolu2()
        end
    end
})

bbb:AddToggle('Main', {
    Text = '原地重生 (测试版！)',
    Default = false,
    Tooltip = '死了重生之后隔一段时间就会重生在你死亡前的位置',
    Callback = function(Value)
  if Value then
        bai.zzz = true
        while task.wait() do
            if bai.zzz == true then
                if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
   CFramea = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFramea
        end
    else
    bai.zzz = false
        end
	end
	end
    end
})

paolu2 = function()
    while paolu1 do
    wait(0.1)
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= blood then
        local og1 = CFrame.new(2.7489891052246094, -295.5, 26.88597297668457)
        local og3 = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        og3.CFrame = og1
        wait(20)
    end
    end
end

bbb:AddToggle('MyToggle', {
	Text = '无视虚空伤害',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(Value)
if Value then
      game:GetService("Workspace").FallenPartsDestroyHeight = (0 / 0)
    else
    bai.bro = false
      game:GetService("Workspace").FallenPartsDestroyHeight = (1 / 1)
        end
	end
})


bbb:AddSlider('MySlider', {
	Text = '范围',
	Default = 0,
	Min = 0,
	Max = 100,
	Rounding = 0,
	Compact = false,

	Callback = function(Value)
		        _G.HeadSize = Value
        _G.Disabled = true
        game:GetService('RunService').RenderStepped:connect(function()
        if _G.Disabled then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                    v.Character.HumanoidRootPart.Transparency = 0.40
                    v.Character.HumanoidRootPart.CanCollide = false
                    end)
                    end
                end
            end
        end)
	end
})

sz:AddDropdown('MyDropdown', {
	Values = { '无', '日本', '美国', },
	Default = 1, -- 的数字索引value / string
	Multi = false, -- true / false, 允许选择多个选项

	Text = '团队选择',
	Tooltip = 'This is a tooltip', -- 悬停在下拉菜单上时显示的信息

	Callback = function(Value)
		if Value == "日本" then
		game:GetService("Workspace").Lobby.TeamChange.ToJapan.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		task.wait(0.2)
		game:GetService("Workspace").Lobby.TeamChange.ToJapan.CFrame = CFrame.new(66, -298, 40.4989738, 1, 0, 0, 0, 1, 0, 0, 0, 1)
elseif Value == "美国" then
game:GetService("Workspace").Lobby.TeamChange.ToUSA.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
task.wait(0.2)
game:GetService("Workspace").Lobby.TeamChange.ToUSA.CFrame = CFrame.new(-66, -298, -40.5010376, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end
	end
})

Lol:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '修改开火特效',
	Tooltip = 'This is a tooltip',

	Placeholder = '请以http://www.roblox.com/asset/?ID=图片id输入', 

	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Backpack["M1 Garand"].Flare.MuzzleFlash.Img.Image = Value
	end
})

Lol:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '修改枪械模型',
	Tooltip = '如果你没有模型，请不要输入',

	Placeholder = '请以rbxassetid://图片id输入', 

	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Backpack["M1 Garand"].Mesh.Meshid = Value
	end
})

ez:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '修改枪械弹夹音效',
	Tooltip = 'This is a tooltip',

	Placeholder = '请以http://roblox.com/asset/?id=音效id输入', 

	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Backpack["M1 Garand"].Handle.Reload.Soundid = Value
	end
})

ez:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '修改开火音效',
	Tooltip = 'This is a tooltip',

	Placeholder = '请以http://roblox.com/asset/?id=音效id输入', 

	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Backpack["M1 Garand"].Handle.FireSound.Soundid = Value
	end
})

Lol:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '修改枪械模型贴图',
	Tooltip = 'This is a tooltip',

	Placeholder = '请以rbxassetid://图片id输入', 

	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Backpack["M1 Garand"].Mesh.TextureID = Value
	end
})

Lol:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '修改手持图片',
	Tooltip = 'This is a tooltip',

	Placeholder = '请以rbxassetid://图片id输入', 

	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Backpack["M1 Garand"].Textureld = Value
	end
})

Lol:AddDivider()

local MyButton = Lol:AddButton({
	Text = '点击复制音效格式',
	Func = function()
		setclipboard("http://roblox.com/asset/?id=音效id")
		Library:Notify("已帮您复制在你的粘贴板中", nil, 4590657391)
	end,
	DoubleClick = false,
	Tooltip = 'This is the main button'
})

local MyButton = Lol:AddButton({
	Text = '点击复制rbxassetid://格式',
	Func = function()
		setclipboard("rbxassetid://图片id")
		Library:Notify("你帮你复制在你的粘贴板中", nil, 4590657391)
	end,
	DoubleClick = false,
	Tooltip = 'This is the main button'
})

local MyButton = Lol:AddButton({
	Text = '点击复制长的图片id格式',
	Func = function()
    setclipboard("http://www.roblox.com/asset/?ID=图片id")
    Library:Notify("你帮你复制在你的粘贴板中", nil, 4590657391)
	end,
	DoubleClick = false,
	Tooltip = '...'
})

HAHA:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '旋转速度',
	Tooltip = 'This is a tooltip',

	Placeholder = '输入旋转速度..', 

	Callback = function(Value)
		bin.speed = tonumber(Value) or 100
	end
})

HAHA:AddToggle('Main', {
    Text = '启用旋转',
    Default = false,
    Tooltip = '',
    Callback = function(state)
    local plr = game:GetService("Players").LocalPlayer
    repeat task.wait() until plr.Character
    local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
    plr.Character:WaitForChild("Humanoid").AutoRotate = false
    
    if state then
        local velocity = Instance.new("AngularVelocity")
        velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
        velocity.MaxTorque = math.huge
        velocity.AngularVelocity = Vector3.new(0, bin.speed, 0)
        velocity.Parent = humRoot
        velocity.Name = "Spinbot"
    else
        local spinbot = humRoot:FindFirstChild("Spinbot")
        if spinbot then
            spinbot:Destroy()
        end
    end
    
    end
})

-- 标签盒略有不同，但这里有一个基本的例子:-【【


-- 依赖框允许我们根据另一个UI元素的状态来控制UI元素的可见性。-例如，我们有一个“功能启用”开关，我们只希望在启用时显示滑块、下拉菜单等功能！-依赖框示例:

-- 库函数-设置水印可见性
Library:SetWatermarkVisibility(true)

-- 具有共同特征（fps和ping）的动态更新水印的示例
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;
local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
	FrameCounter += 1;

	if (tick() - FrameTimer) >= 1 then
		FPS = FrameCounter;
		FrameTimer = tick();
		FrameCounter = 0;
	end;

	Library:SetWatermark(('XRE | %s fps | %s ping'):format(
		math.floor(FPS),
		math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
	));
end);
 -- todo:为此添加一个函数>

Library:OnUnload(function()
	WatermarkConnection:Disconnect()

	print('Unloaded!')
	Library.Unloaded = true
end)

-- 用户界面设置
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('菜单')

-- 我设置了NoUI，所以它不会出现在键绑定菜单中
MenuGroup:AddButton('移除UI', function() Library:Unload() end)
MenuGroup:AddLabel('绑定菜单'):AddKeyPicker('菜单2', { Default = '结束', NoUI = true, Text = '菜单2' })

Library.ToggleMM2to = Options.MenuMM2to -- 允许您为菜单定制一个键绑定

-- 插件:-保存管理器（允许你有一个配置系统）-主题管理器（允许你有一个菜单主题系统）-把库交给我们的经理
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- 忽略主题管理器使用的键。-（我们不希望配置保存主题，是吗？)
SaveManager:IgnoreThemeSettings()

-- 将我们的MenuMM2to添加到忽略列表中-（您希望每个配置都有不同的菜单键吗？可能不会。)
SaveManager:SetIgnoreIndexes({ 'MenuMM2to' })

-- 这样做的用例:-脚本中枢可以在一个全局文件夹中拥有主题-而游戏配置在每个游戏的单独文件夹中
ThemeManager:SetFolder('seawarfare')
SaveManager:SetFolder('MyScriptHub/war')

-- 在选项卡的右侧构建我们的配置菜单
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- 在左侧构建我们的主题菜单（包含大量内置主题）-注意:您也可以调用ThemeManager:ApplyToGroupbox将其添加到特定的分组框中
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- 您可以使用SaveManager:LoadAutoloadConfig（）来加载一个配置-该配置已被标记为自动加载！
SaveManager:LoadAutoloadConfig()
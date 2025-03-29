local repo = 'https://raw.githubusercontent.com/KINGHUB01/Gui/main/'

local Library = loadstring(game:HttpGet(repo ..'Gui%20Lib%20%5BLibrary%5D'))()
local ThemeManager = loadstring(game:HttpGet(repo ..'Gui%20Lib%20%5BThemeManager%5D'))()
local SaveManager = loadstring(game:HttpGet(repo ..'Gui%20Lib%20%5BSaveManager%5D'))()

local player = game.Players.LocalPlayer
local BabyShark, KillerFartPart, HRP = nil, nil, nil
local SkibidiDistance, BlockEnabled, AimLockTimer = 6, false, 2
local aimbot1x1sounds = {
    "rbxassetid://79782181585087",
    "rbxassetid://128711903717226"
}
local johnaimbotsounds = {
    "rbxassetid://109525294317144"
}

local jasonaimbotsounds = {
    "rbxassetid://112809109188560",
    "rbxassetid://102228729296384"
}
local guestsounds = {
    "rbxassetid://609342351",
    "rbxassetid://126814334954192"
}
local MIA = game:GetService("Workspace").Themes.lobby
local jasonaimbotloop
local aimbot1x1loop
local johnloop
local shedloop
local pizzaloop
local guestaim = false
local REP = 1
local autoGR = false
local Auto1x1 = false
local CL = nil
local players = game:GetService("Players")
local plr = players.LocalPlayer
local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
local humanoid = plr.Character:FindFirstChild("Humanoid")
local spinBot = false
local spinBotSpeed = 20
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local GG = {}
local HH = {}
local LL = false
local swim = Value
local blood = Value
local play = ""
local speeds = 1
local nowe = false
local tpwalking = false
local speaker = game:GetService("Players").LocalPlayer
local heartbeat = game:GetService("RunService").Heartbeat

local jump = false
local jumpp = false
local xj = false
local function activatethehakari(state)
local char = player.Character or player.CharacterAdded:Wait()
        local humanoid = char:WaitForChild("Humanoid")
        local rootPart = char:WaitForChild("HumanoidRootPart")
    
        hakariactive = state
    
        if hakariactive then
            humanoid.PlatformStand = true
            humanoid.JumpPower = 0
    
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.Parent = rootPart
    
            local animation = Instance.new("Animation")
            animation.AnimationId = "rbxassetid://138019937280193"
            local animationTrack = humanoid:LoadAnimation(animation)
            animationTrack:Play()
    
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://87166578676888"
            sound.Parent = rootPart
            sound.Volume = 0.5
            sound.Looped = true
            sound:Play()
    
            local effect = game.ReplicatedStorage.Assets.Emotes.HakariDance.HakariBeamEffect:Clone()
            effect.Name = "PlayerEmoteVFX"
            effect.CFrame = char.PrimaryPart.CFrame * CFrame.new(0, -1, -0.3)
            effect.WeldConstraint.Part0 = char.PrimaryPart
            effect.WeldConstraint.Part1 = effect
            effect.Parent = char
            effect.CanCollide = false
    
            local args = {
                [1] = "PlayEmote",
                [2] = "Animations",
                [3] = "HakariDance"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    
            animationTrack.Stopped:Connect(function()
                humanoid.PlatformStand = false
                if bodyVelocity and bodyVelocity.Parent then
                    bodyVelocity:Destroy()
                end
            end)
        else
            humanoid.PlatformStand = false
            humanoid.JumpPower = 0 
    
            local bodyVelocity = rootPart:FindFirstChildOfClass("BodyVelocity")
            if bodyVelocity then
                bodyVelocity:Destroy()
            end
    
            local sound = rootPart:FindFirstChildOfClass("Sound")
            if sound then
                sound:Stop()
                sound:Destroy()
            end
    
            local effect = char:FindFirstChild("PlayerEmoteVFX")
            if effect then
                effect:Destroy()
            end
    
            for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
                if track.Animation.AnimationId == "rbxassetid://138019937280193" then
                    track:Stop()
                end
            end
        end
local function HawkTuah()
		if not BlockEnabled then
			return
		end
			BabyShark = workspace:WaitForChild("Players"):FindFirstChild("Killers")
			BabyShark = BabyShark and BabyShark:GetChildren()[1] or nil
			KillerFartPart = BabyShark and BabyShark:FindFirstChild("HumanoidRootPart") or nil

		end
local function guestaimbot(state)
        shedaim = state
        if game.Players.LocalPlayer.Character.Name ~= "Guest1337" and state then
            Library:Notify("角色不对，会出错，无法使用", nil, 4590657391)
            return
        end
        if state then
            pizzaloop = game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
                if not shedaim then return end
                for _, v in pairs(guestsounds) do
                    if child.Name == v then
                        local killersFolder = game.Workspace.Players:FindFirstChild("Killers")
                        if killersFolder then
                            local killer = killersFolder:FindFirstChildOfClass("Model")
                            if killer and killer:FindFirstChild("HumanoidRootPart") then
                                local killerHRP = killer.HumanoidRootPart
                                local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if playerHRP then
                                    local num = 1
                                    local maxIterations = 100
    
                                    while num <= maxIterations do
                                        task.wait(0.01)
                                        num = num + 1
                                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, killerHRP.Position)
                                        playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, killerHRP.Position)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        else
            if Ellioloop then
                Elliooop:Disconnect()
                Ellioloop = nil
            end
        end
    end
    end
    local function guestaimbot(state)
        shedaim = state
        if game.Players.LocalPlayer.Character.Name ~= "Guest1337" and state then
            Library:Notify("角色不对，可能出现错误", nil, 4590657391)
            return
        end
        if state then
            shedloop = game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
                if not shedaim then return end
                for _, v in pairs(guestsounds) do
                    if child.Name == v then
                        local killersFolder = game.Workspace.Players:FindFirstChild("Killers")
                        if killersFolder then
                            local killer = killersFolder:FindFirstChildOfClass("Model")
                            if killer and killer:FindFirstChild("HumanoidRootPart") then
                                local killerHRP = killer.HumanoidRootPart
                                local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                if playerHRP then
                                    local num = 1
                                    local maxIterations = 100
    
                                    while num <= maxIterations do
                                        task.wait(0.01)
                                        num = num + 1
                                        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, killerHRP.Position)
                                        playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, killerHRP.Position)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        else
            if guestloop then
                guestloop:Disconnect()
                guestloop = nil
            end
        end
    end
local function jasonaimbot(state)
        jasonaim = state
        if game.Players.LocalPlayer.Character.Name ~= "Jason" and state then
            Library:Notify("角色不对，可能出现错误", nil, 4590657391)
            return 
        end
            if state then
                jasonaimbotloop = game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
                    if not jasonaim then return end
                    for _, v in pairs(jasonaimbotsounds) do
                        if child.Name == v then
                           
                            local survivors = {}
                            for _, player in pairs(game.Players:GetPlayers()) do
                                if player ~= game.Players.LocalPlayer then
                                    local character = player.Character
                                    if character and character:FindFirstChild("HumanoidRootPart") then
                                        table.insert(survivors, character)
                                    end
                                end
                            end
        
                           
                            local nearestSurvivor = nil
                            local shortestDistance = math.huge  
                            
                            for _, survivor in pairs(survivors) do
                                local survivorHRP = survivor.HumanoidRootPart
                                local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                
                                if playerHRP then
                                    local distance = (survivorHRP.Position - playerHRP.Position).Magnitude
                                    if distance < shortestDistance then
                                        shortestDistance = distance
                                        nearestSurvivor = survivor
                                    end
                                end
                            end
                            
                          
                            if nearestSurvivor then
                                local nearestHRP = nearestSurvivor.HumanoidRootPart
                                local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                local maxIterations = 70
                                if playerHRP then
                                    local direction = (nearestHRP.Position - playerHRP.Position).Unit
                                    local num = 1
                                   
                                        
                                        while num <= maxIterations do
                                            task.wait(0.01)
                                            num = num + 1
                                            
                                            playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, Vector3.new(nearestHRP.Position.X, nearestHRP.Position.Y, nearestHRP.Position.Z))
                    
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                if jasonaimbotloop then
                    jasonaimbotloop:Disconnect()
                    jasonaimbotloop = nil
                end
            end
    end
local function johnaimbot(state)
        johnaim = state
        if game.Players.LocalPlayer.Character.Name ~= "JohnDoe" and state then
            Library:Notify("角色不对，可能出现错误", nil, 4590657391)
            return 
        end
            if state then
                johnloop = game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
                    if not johnaim then return end
                    for _, v in pairs(johnaimbotsounds) do
                        if child.Name == v then
                           
                            local survivors = {}
                            for _, player in pairs(game.Players:GetPlayers()) do
                                if player ~= game.Players.LocalPlayer then
                                    local character = player.Character
                                    if character and character:FindFirstChild("HumanoidRootPart") then
                                        table.insert(survivors, character)
                                    end
                                end
                            end
        
                           
                            local nearestSurvivor = nil
                            local shortestDistance = math.huge  
                            
                            for _, survivor in pairs(survivors) do
                                local survivorHRP = survivor.HumanoidRootPart
                                local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                
                                if playerHRP then
                                    local distance = (survivorHRP.Position - playerHRP.Position).Magnitude
                                    if distance < shortestDistance then
                                        shortestDistance = distance
                                        nearestSurvivor = survivor
                                    end
                                end
                            end
                            
                          
                            if nearestSurvivor then
                                local nearestHRP = nearestSurvivor.HumanoidRootPart
                                local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                local maxIterations = 330
                                if playerHRP then
                                    local direction = (nearestHRP.Position - playerHRP.Position).Unit
                                    local num = 1
                                   
                                        
                                        while num <= maxIterations do
                                            task.wait(0.01)
                                            num = num + 1
                                            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                            playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, Vector3.new(nearestHRP.Position.X, nearestHRP.Position.Y, nearestHRP.Position.Z))
                    
                                    end
                                end
                            end
                        end
                    end
                end)
            else
                if johnloop then
                    johnloop:Disconnect()
                    johnloop = nil
                end
            end
    end
local function aimbot1x1x1x1(state)
        aimbot1x1 = state
    
        if game.Players.LocalPlayer.Character.Name ~= "1x1x1x1" and state then
            Library:Notify("你的角色不是1x1x1x1，会出错哦", nil, 4590657391)
            return 
        end
    
        if state then
            aimbot1x1loop = game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(child)
                if not aimbot1x1 then return end
                for _, v in pairs(aimbot1x1sounds) do
                    if child.Name == v then
                        local survivors = {}
                        for _, player in pairs(game.Players:GetPlayers()) do
                            if player ~= game.Players.LocalPlayer then
                                local character = player.Character
                                if character and character:FindFirstChild("HumanoidRootPart") then
                                    table.insert(survivors, character)
                                end
                            end
                        end
    
                        local nearestSurvivor = nil
                        local shortestDistance = math.huge  
                        
                        for _, survivor in pairs(survivors) do
                            local survivorHRP = survivor.HumanoidRootPart
                            local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            
                            if playerHRP then
                                local distance = (survivorHRP.Position - playerHRP.Position).Magnitude
                                if distance < shortestDistance then
                                    shortestDistance = distance
                                    nearestSurvivor = survivor
                                end
                            end
                        end
                        
                        if nearestSurvivor then
                            local nearestHRP = nearestSurvivor.HumanoidRootPart
                            local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            
                            if playerHRP then
                                local direction = (nearestHRP.Position - playerHRP.Position).Unit
                                local num = 1
                                local maxIterations = 100 
    
                                
                                    if child.Name == "rbxassetid://79782181585087" then
                                        maxIterations = 220  
                                    end
    
                                while num <= maxIterations do
                                    task.wait(0.01)
                                    num = num + 1
                                    workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestHRP.Position)
                                    playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, Vector3.new(nearestHRP.Position.X, nearestHRP.Position.Y, nearestHRP.Position.Z))
                                end
                            
                            end
                        end
                    end
                end
            end)
        else
            if aimbot1x1loop then
                aimbot1x1loop:Disconnect()
                aimbot1x1loop = nil
            end
        end
    end
local function removeModelEffects(model)
    local highlight = model:FindFirstChild("ModelHighlight")
    local billboard = model:FindFirstChild("NameBillboard")
    
    if highlight then
        highlight:Destroy()
    end
    
    if billboard then
        billboard:Destroy()
    end
end

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
bro = false
}
local play = {
aaa = ""
}


local Options = getgenv().Linoria.Options
local Toggles = getgenv().Linoria.Toggles

local Window = Library:CreateWindow({
	-- 如果您希望菜单显示在中间，请将“居中”设定为true
	-- 如果希望菜单在创建时出现，请将AutoShow设置为true
	-- 如果你想在游戏中拥有可调整大小的窗口，将Resizable设置为true
	-- 如果不想使用Linoria游标，请将ShowCustomCursor设置为false
	-- 位置和大小在这里也是有效的选项
	-- 但是您不需要定义它们，除非:）

	Title = 'Httadmin :被遗弃[Chinese]',
	Center = true,
	AutoShow = true,
	Resizable = true,
	ShowCustomCursor = true,
	TabPadding = 8,
	MenuFadeTime = 0.2
})

-- 回拨说明:
-- 通过初始元素参数传入回调函数（即回调=函数（值）...）作品
-- 但是，使用切换/选项。INDEX:OnChanged(函数(值)...)是推荐的做法。
-- 我强烈建议将UI代码与逻辑代码分离。即首先创建您的UI元素，然后再创建setup :OnChanged函数。

-- 您不必这样设置您的选项卡和组，这只是一种偏好。
local Tabs = {
	-- Creates a new tab titled Main
	Main = Window:AddTab('调试'),
	XXZ = Window:AddTab('主要'),
	SH = Window:AddTab('自瞄'),
	SR = Window:AddTab('动作'),
	['UI Settings'] = Window:AddTab('UI控制'),
}

-- Groupbox和Tabbox继承相同的函数
-- 除了Tabbox之外，您必须调用选项卡上的函数（tab box:AddTab（name））
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('人物属性')
local RightGroupbox = Tabs.Main:AddRightGroupbox('视角');
local aRightGroupbox = Tabs.Main:AddRightGroupbox('玩家');
local bRightGroupbox = Tabs.Main:AddRightGroupbox('esp');
local zhuy = Tabs.XXZ:AddRightGroupbox('发电机');
local god = Tabs.XXZ:AddRightGroupbox('人物属性');
local Lol = Tabs.XXZ:AddLeftGroupbox('文本ESP')
local Ez = Tabs.XXZ:AddLeftGroupbox('Highlight')
local Chat = Tabs.XXZ:AddRightGroupbox('聊天框');
local Kick = Tabs.XXZ:AddLeftGroupbox('拦截与删除')
local NOW = Tabs.XXZ:AddLeftGroupbox('娱乐')
local SB = Tabs.SH:AddLeftGroupbox('幸存者')
local SC = Tabs.SH:AddRightGroupbox('杀手')
local Cnm = Tabs.SH:AddRightGroupbox('自动')
local ST = Tabs.SR:AddLeftGroupbox('无法中途关闭的')
local SG = Tabs.SR:AddRightGroupbox('可以中途关闭的')
local Fuck = Tabs.SR:AddRightGroupbox('大厅音乐')
-- 我们还可以通过以下代码获得我们的主选项卡:
-- local LeftGroupBox = Window.Tabs.Main:AddLeftGroupbox('Groupbox')
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
	Text = '开启速度〔视角〕',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(v)
if v == true then
                sudu = game:GetService("RunService").Heartbeat:Connect(function()
                    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent then
                        if game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                            game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 20)
                        end
                    end
                end)
            elseif not v and sudu then
                sudu:Disconnect()
                sudu = nil
            end
	end
})
LeftGroupBox:AddSlider('MySlider', {
	Text = '速度〔视角〕',
	Default = 16,
	Min = 0,
	Max = 200,
	Rounding = 0,
	Compact = false,

	Callback = function(v)
		Speed = v
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

LeftGroupBox:AddSlider('MySlider', {
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

LeftGroupBox:AddInput('MyTextbox', {
	Default = '请输入',
	Numeric = false, 
	Finished = false, 
	ClearTextOnFocus = true, 
		
	Text = '旋转速度',
	Tooltip = 'This is a tooltip',

	Placeholder = '输入你需要输入的', 

	Callback = function(Value)
		spinBotSpeed = Value
        if spinBot then
            for i,v in pairs(hrp:GetChildren()) do
                if v.Name == "Spinning" then
                    v:Destroy()
                end
            end
            local Spin = Instance.new("BodyAngularVelocity")
            Spin.Name = "Spinning"
            Spin.Parent = hrp
            Spin.MaxTorque = Vector3.new(0, math.huge, 0)
            Spin.AngularVelocity = Vector3.new(0,Value,0)
        end
	end
})

LeftGroupBox:AddToggle('Main', {
    Text = '启用旋转',
    Default = false,
    Tooltip = '',
    Callback = function(Value)
   spinBot = Value
        if Value then
            for i,v in pairs(hrp:GetChildren()) do
                if v.Name == "Spinning" then
                    v:Destroy()
                end
            end
            plr.Character.Humanoid.AutoRotate = false
            local Spin = Instance.new("BodyAngularVelocity")
            Spin.Name = "Spinning"
            Spin.Parent = hrp
            Spin.MaxTorque = Vector3.new(0, math.huge, 0)
            Spin.AngularVelocity = Vector3.new(0,spinBotSpeed,0)
        else
            for i,v in pairs(hrp:GetChildren()) do
                if v.Name == "Spinning" then
                    v:Destroy()
                end
            end
            plr.Character.Humanoid.AutoRotate = true
        end
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
LeftGroupBox:AddSlider('MySlider', {
	Text = '飞行速度',
	Default = 1,
	Min = 1,
	Max = 50,
	Rounding = 0,
	Compact = false,

	Callback = function(Value)
		local char = speaker.Character
	if char and char.Humanoid then
		local hum = char.Humanoid
		if speeds >= 1 then
			speeds = Value
			updatespeed(char, hum)
			end
			end
	end
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
    Text = '没有雾[优化版]',
    Default = false,
    Tooltip = '..',
    Callback = function(state)
        local Lighting = game:GetService("Lighting")
        if state then
        Lighting.FogEnd = 100000
        for _, v in pairs(Lighting:GetDescendants()) do
        if v:IsA("Atmosphere") then
        v:Destroy()
        end
    end
        else
    print("感谢无名帮助宣传脚本")
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
	Text = '循环把玩家传送到头上',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
	toggle = state
while toggle do wait()
local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(play)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        tp_player.Character.HumanoidRootPart.CFrame = HumRoot.CFrame + Vector3.new(0, 4, 0)
    end
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
bRightGroupbox:AddToggle('MyToggle', {
	Text = '绘制玩家 (拥有团队检查)',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(Value)
	        LL = Value
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
                        TL.Text = string.format("%s\n%d生命值 (%.1fm)", targetPlayer.Name, math.floor(Hum.Health), dist)
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
zhuy:AddLabel("也许是帮助我们拍视频或者是宣传脚本\n或者是&的时候能用到: p")
zhuy:AddToggle('MyToggle', {
    Text = '隐藏玩家栏',
    Default = false,
    Tooltip = '隐藏...',
    Callback = function(state)
        local player = game.Players.LocalPlayer
        local playergui = player:WaitForChild("PlayerGui")
        local playerinfo = playergui:WaitForChild("TemporaryUI"):WaitForChild("PlayerInfo")
        if state then playerinfo.CurrentSurvivors.Visible = false
        playerinfo.PlayerIcon.Image = "rbxassetid://12549056837"
        else
        playerinfo.CurrentSurvivors.Visible = true
        end
    end
})

Fuck:AddInput('MyTextbox', {
	Default = '请使用rbxassetid://音乐id格式',
	Numeric = false, -- true / false, 只允许数字
	Finished = false, -- true / false, 仅当您按enter时呼叫回拨
	ClearTextOnFocus = true, -- true / false, 如果为false，当文本框聚焦时文本不会被清除
		
	Text = '修改大厅音乐',
	Tooltip = '修改', -- 悬停在文本框上方时显示的信息

	Placeholder = '请使用rbxassetid://音乐id格式', -- 框为空时的占位符文本- MaxLength也是一个选项，它是文本的最大长度

	Callback = function(Value)	
    theme.SoundId = Value
	end
})

local MyButton = Fuck:AddButton({
	Text = '点击复制原版音乐id',
	Func = function()
		setclipboard("rbxassetid://113613352374472")
		Library:Notify("已帮您复制在你的粘贴板中", nil, 4590657391)
	end,
	DoubleClick = false,
	Tooltip = 'This is the main button'
})

local MyButton = Fuck:AddButton({
	Text = '点击复制音效格式',
	Func = function()
		setclipboard("rbxassetid://这里填写你的音乐id")
		Library:Notify("已帮您复制在你的粘贴板中", nil, 4590657391)
	end,
	DoubleClick = false,
	Tooltip = 'This is the main button'
})

zhuy:AddLabel("暴力版[不会封号或者踢，除非你被别人举报]")
zhuy:AddToggle('MyToggle', {
	Text = '修理发电机[这是个测试版]',
	Default = false,
	Tooltip = 'King',
	Callback = function(state)
		_G.BTE = state
		if state then
			local function GeneratorOnce()
            local GTW = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")
            local AUP = GTW and GTW:FindFirstChild("Map")
            if AUP then for _, g in ipairs(AUP:GetChildren()) do
            if g.Name == "Generator" and g.Progress.Value < 100 then g.Remotes.RE:FireServer()
               end
           end
     end
end
            task.spawn(function()
            while _G.BTE do
            GeneratorOnce()
            task.wait(2)
            end
        end)
		else
			print("修理发电机功能已关闭")
		end
    end
})

zhuy:AddLabel("调整你想要的")
zhuy:AddSlider('MySlider', {
	Text = '修理发电机时间',
	Default = 1,
	Min = 0,
	Max = 30,
	Rounding = 0,
	Compact = false,
	Callback = function(value)
		REP = value
	end
})

zhuy:AddToggle('MyToggle', {
	Text = '修理发电机',
	Default = false,
	Tooltip = 'FK',
	Callback = function(state)
		autoGR = state  
		if state then
			task.spawn(function()
            while autoGR do
            wait(REP)
                   local mapFolder = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame") and workspace.Map.Ingame:FindFirstChild("Map")
					if mapFolder then local closestGenerator, closestDistance = nil, math.huge
                    local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    for _, g in ipairs(mapFolder:GetChildren()) do
                    if g.Name == "Generator" and g.Progress.Value < 100 then local distance = (g.Main.Position - playerPosition).Magnitude
                    if distance < closestDistance then closestDistance = distance
                    closestGenerator = g
        end
    end
end
                    if closestGenerator and closestGenerator.Remotes and closestGenerator.Remotes:FindFirstChild("RE") then closestGenerator.Remotes.RE:FireServer()
                    Library:Notify("Ok", nil, 4590657391)
        end
    end
end
end)
		else
        Library:Notify("已关闭", nil, 4590657391)
    end
end
})


zhuy:AddLabel("6.5秒修理一次")
zhuy:AddLabel("安全版本")

local mxj = false
zhuy:AddToggle('MyToggle', {
	Text = '一键修理',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
mxj = state 
    
    if state then
       
           while mxj do 

                                     wait(6.5)
                          	         local FartNapFolder = workspace:FindFirstChild("Map")
				                          and workspace.Map:FindFirstChild("Ingame")
				                          and workspace.Map.Ingame:FindFirstChild("Map")
			                         if FartNapFolder then
				                          local closestGenerator, closestDistance = nil, math.huge
				                          local playerPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
				                          for _, g in ipairs(FartNapFolder:GetChildren()) do
					                          if g.Name == "Generator" and g.Progress.Value < 100 then
						                          local distance = (g.Main.Position - playerPosition).Magnitude
						                          if distance < closestDistance then
							                          closestDistance = distance
							                          closestGenerator = g
						                          end
					                          end
				                          end
				                          if closestGenerator then
					                          closestGenerator.Remotes.RE:FireServer()
				                          end
			                         end
			                         
           end
    else
        print("你妈死了")
    end
        end
})

Lol:AddToggle('MyToggle', {
	Text = '绘制杀手',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
if state then
     for i, v in ipairs(workspace.Players.Killers:GetChildren()) do
         if v:IsA("Model") and not v:FindFirstChild("BillboardGui") then
             local billboard = Instance.new("BillboardGui")
             billboard.Parent = v
             billboard.Adornee = v
             billboard.Size = UDim2.new(0, 20, 0, 20)
             billboard.StudsOffset = Vector3.new(0, 3, 0)
             billboard.AlwaysOnTop = true

             local nameLabel = Instance.new("TextLabel")
             nameLabel.Parent = billboard
             nameLabel.Size = UDim2.new(1, 0, 1, 0)
             nameLabel.BackgroundTransparency = 1
             nameLabel.Text = v.Name
             nameLabel.TextColor3 = Color3.new(1, 0, 0)
             nameLabel.TextStrokeTransparency = 0.5
             nameLabel.TextScaled = false
             nameLabel.TextSize = 15 
         end
     end

     EnemyConnection = workspace.Players.Killers.ChildAdded:Connect(function(v)
         if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and state then
             local billboard = Instance.new("BillboardGui")
             billboard.Parent = v
             billboard.Adornee = v
             billboard.Size = UDim2.new(0, 20, 0, 20)
             billboard.StudsOffset = Vector3.new(0, 3, 0)
             billboard.AlwaysOnTop = true

             local nameLabel = Instance.new("TextLabel")
             nameLabel.Parent = billboard
             nameLabel.Size = UDim2.new(1, 0, 1, 0)
             nameLabel.BackgroundTransparency = 1
             nameLabel.Text = v.Name
             nameLabel.TextColor3 = Color3.new(1, 0, 0)
             nameLabel.TextStrokeTransparency = 0.5
             nameLabel.TextScaled = false
             nameLabel.TextSize = 15 
         end
     end)
else
     if EnemyConnection then
         EnemyConnection:Disconnect()
         EnemyConnection = nil
     end

     for i, v in ipairs(workspace.Players.Killers:GetChildren()) do
         if v:FindFirstChild("BillboardGui") then
             v.BillboardGui:Destroy()
         end
     end
end
	end
})

Lol:AddToggle('MyToggle', {
	Text = '绘制玩家身份',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
if state then
        for _, v in ipairs(workspace.Players.Survivors:GetChildren()) do
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true

                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(0, 1, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = false
                nameLabel.TextSize = 15 
            end
        end

        itemsConnection = workspace.Players.Survivors.ChildAdded:Connect(function(v)
            if v:IsA("Model") and not v:FindFirstChild("BillboardGui") and state then
                local billboard = Instance.new("BillboardGui")
                billboard.Parent = v
                billboard.Adornee = v
                billboard.Size = UDim2.new(0, 20, 0, 20)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.AlwaysOnTop = true

                local nameLabel = Instance.new("TextLabel")
                nameLabel.Parent = billboard
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = v.Name
                nameLabel.TextColor3 = Color3.new(0, 1, 0)
                nameLabel.TextStrokeTransparency = 0.5
                nameLabel.TextScaled = false
                nameLabel.TextSize = 15 
            end
        end)
    else
        if itemsConnection then
            itemsConnection:Disconnect()
            itemsConnection = nil
        end

        for _, v in ipairs(workspace.Players.Survivors:GetChildren()) do
            if v:FindFirstChild("BillboardGui") then
                v.BillboardGui:Destroy()
            end
        end
    end
	end
})

local function setupModelEffects(model)
   
    if model:FindFirstChild("ModelHighlight") or model:FindFirstChild("NameBillboard") then
        return
    end

   
    local highlight = Instance.new("Highlight")
    highlight.Name = "ModelHighlight"
    highlight.FillColor = Color3.fromRGB(0, 255, 255)   
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255) 
    highlight.Parent = model

   
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "NameBillboard"
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.AlwaysOnTop = true
    billboard.Adornee = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
    billboard.Parent = model

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = model.Name
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 15
    textLabel.TextColor3 = Color3.new(0, 255, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Parent = billboard
end
local function setupSurvivorsModelEffects(model)
    
    if model:FindFirstChild("ModelHighlight") or model:FindFirstChild("NameBillboard") then
        return
    end

    
    local highlight = Instance.new("Highlight")
    highlight.Name = "ModelHighlight"
    highlight.FillColor = Color3.fromRGB(0, 255, 245)   
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255) 
    highlight.Parent = model

    
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "NameBillboard"
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 2, 0)
    billboard.AlwaysOnTop = true
    billboard.Adornee = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart")
    billboard.Parent = model

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = model.Name
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextSize = 15
    textLabel.TextColor3 = Color3.new(0, 255, 255)
    textLabel.BackgroundTransparency = 1
    textLabel.Parent = billboard
end


local item = false
Lol:AddToggle('MyToggle', {
	Text = '物品透视',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
item = state  
    
    if state then
     
           while item do  
                          local ingame = workspace:WaitForChild("Map"):WaitForChild("Ingame")

                          for _, instance in ipairs(ingame:GetDescendants()) do
                              if instance:IsA("Tool") then
                                  
                                  if not instance:FindFirstChildOfClass("Highlight") and item==true then
                                      local highlight = Instance.new("Highlight")
                                      highlight.Name = "Highlight"
                                      highlight.FillColor = Color3.fromRGB(0, 255, 0) 
                                      highlight.OutlineColor = Color3.fromRGB(0, 255, 255) 
                                      highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop 
                                      highlight.Parent = instance
                                  end

        
                                  if not instance:FindFirstChild("NameLabel") and item==true then
                                      local billboard = Instance.new("BillboardGui")
                                      billboard.Name = "NameLabel"
                                      billboard.Size = UDim2.new(0, 50, 0, 50) 
                                      billboard.StudsOffset = Vector3.new(0, 1, 0) 
                                      billboard.AlwaysOnTop = true 
            
                                      local textLabel = Instance.new("TextLabel")
                                      textLabel.Size = UDim2.new(1, 0, 1, 0) 
                                      textLabel.BackgroundTransparency = 1 
                                      textLabel.Text = instance.Name 
                                      textLabel.Font = Enum.Font.SourceSansBold
                                      textLabel.TextSize = 20
                                      textLabel.TextColor3 = Color3.new(0, 255, 255) 
                                      textLabel.Parent = billboard
            
                                      billboard.Parent = instance
                                  end
                              end
                          end
                          wait(2)
           end
    else
            local ingame = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")

                          if ingame then
                              for _, tool in ipairs(ingame:GetChildren()) do
                                  if tool:IsA("Tool") then
           
                                      local highlight = tool:FindFirstChild("Highlight")
                                      if highlight then
                                          highlight:Destroy()
                                      end
            
            
                                      local nameLabel = tool:FindFirstChild("NameLabel")
                                      if nameLabel then
                                          nameLabel:Destroy()
                                      end
                                  end
                              end
                          end
    end
        end
})

Lol:AddToggle('MyToggle', {
    Text = '发电机透视',
    Default = false,
    Tooltip = '..',
    Callback = function(state)
        dj = state  
        if state then
            task.spawn(function()
                while dj do  
                    local targetFolder = workspace.Map.Ingame.Map
                    if targetFolder then
                        for _, model in ipairs(targetFolder:GetChildren()) do
                            if model:IsA("Model") and model.Name == "Generator" then
                                if not model.PrimaryPart then
                                    local foundPart
                                    for _, descendant in ipairs(model:GetDescendants()) do
                                        if descendant:IsA("BasePart") then
                                            foundPart = descendant
                                            break
                                        end
                                    end
                                    if foundPart then
                                        model.PrimaryPart = foundPart
                                    else
                                        warn("Generator ".. model.Name .." 缺少 BasePart，跳过处理")
                                        continue 
                                    end
                                end
                                if not model:FindFirstChildOfClass("Highlight") then
                                    local highlight = Instance.new("Highlight")
                                    highlight.Name = "fuck"
                                    highlight.Adornee = model
                                    highlight.Parent = model
                                end
                                local billboard = model:FindFirstChildWhichIsA("BillboardGui")
                                if billboard then
                                    local label = billboard:FindFirstChild("TextLabel")
                                    if label then
                                        label.Text = "发电机[进度: " .. tostring(model.Progress.Value) .. "%]"
                                    end
                                else
                                    local newBillboard = Instance.new("BillboardGui")
                                    newBillboard.Name = "lol"
                                    newBillboard.Adornee = model.PrimaryPart
                                    newBillboard.Size = UDim2.new(0, 100, 0, 50)
                                    newBillboard.StudsOffset = Vector3.new(0, 1, 0)
                                    newBillboard.AlwaysOnTop = true                         
                                    local textLabel = Instance.new("TextLabel")
                                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                                    textLabel.Text = "发电机[进度: " .. tostring(model.Progress.Value) .. "%]"
                                    textLabel.TextColor3 = Color3.new(0, 1, 1)
                                    textLabel.TextScaled = true
                                    textLabel.BackgroundTransparency = 1
                                    textLabel.Parent = newBillboard
                                    
                                    newBillboard.Parent = model
                                end
                            end
                        end
                    end
                    wait(2)
                end
            end)
        else
            local targetFolder = workspace.Map.Ingame.Map
            if targetFolder then
                for _, model in ipairs(targetFolder:GetChildren()) do
                    if model:IsA("Model") and model.Name == "Generator" then
                        for _, obj in ipairs(model:GetChildren()) do
                            if obj:IsA("Highlight") then
                                obj:Destroy()
                            end
                        end
                        for _, obj in ipairs(model:GetChildren()) do
                            if obj:IsA("BillboardGui") then
                                obj:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
})



god:AddToggle('MyToggle', {
	Text = '无限体力',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
jump = state  
    
    if state then
       
           while jump do  
                 
                          local Players = game:GetService("Players")
                          local player = Players.LocalPlayer

                              local sprintModule = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)

                              sprintModule.StaminaLossDisabled = true

                          wait(5)
           end
    else
        local sprintModule = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
        sprintModule.StaminaLossDisabled = false
    end
        end
})

god:AddToggle('MyToggle', {
	Text = '恢复跳跃',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(value)
if value then
				game:GetService("Players").LocalPlayer.PlayerGui.TouchGui.TouchControlFrame.JumpButton.Visible = true
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
				else
				game:GetService("Players").LocalPlayer.PlayerGui.TouchGui.TouchControlFrame.JumpButton.Visible = false
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
				end
        end
})

Ez:AddToggle('MyToggle', {
	Text = '玩家Highlight',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
    if state then
        local runService = game:GetService("RunService")
        event = runService.RenderStepped:Connect(function()
            for _,v in pairs(game:GetService("Workspace").Players.Survivors:GetChildren()) do
                if not v:FindFirstChild("Lol") then
                    local esp = Instance.new("Highlight", v)
                    esp.Name = "Lol"
                    esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    esp.FillColor = Color3.new(0, 255, 0)
                end
            end
        end)
    end
    if not state then
        event:Disconnect()
        for _,v in pairs(game:GetService("Workspace").Players.Survivors:GetChildren()) do
            v:FindFirstChild("Lol"):Destroy()
        end
    end
        end
})

Ez:AddToggle('MyToggle', {
	Text = '杀手Highlight',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '..', -- 悬停在切换按钮上时显示的信息

	Callback = function(bool)
    if bool then
        local runService = game:GetService("RunService")
        event = runService.RenderStepped:Connect(function()
            for _,v in pairs(game:GetService("Workspace").Players.Killers:GetChildren()) do
                if not v:FindFirstChild("XKK") then
                    local esp = Instance.new("Highlight", v)
                    esp.Name = "XKK"
                    esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    esp.FillColor = Color3.new(255, 0, 0)
                end
            end
        end)
    end
    if not bool then
        event:Disconnect()
        for _,v in pairs(game:GetService("Workspace").Players.Killers:GetChildren()) do
            v:FindFirstChild("XKK"):Destroy()
        end
    end
        end
})


Kick:AddToggle('MyToggle', {
	Text = '删除1x1x1x1的功能干扰屏幕',
	Default = false, -- 默认值:true=允许，false=不允许
	Tooltip = '还没有做', -- 悬停在切换按钮上时显示的信息

	Callback = function(state)
	if state then
    print("拦截1x1x1x1屏幕干扰已经打开")
    else
    print("其实根本没做哈哈哈哈哈哈哈哈哈哈")
        end
        end
})

Kick:AddToggle('MyToggle', {
	Text = '自动点击1x1弹窗',
	Default = false,
	Tooltip = 'ji',
	Callback = function(state)
		Auto1x1 = state
		if state then
			CL = task.spawn(function()
            while Auto1x1 do
            local player = game:GetService("Players").LocalPlayer
            local popups = player.PlayerGui.TemporaryUI:GetChildren()
            for _, i in ipairs(popups) do
            if i.Name == "1x1x1x1Popup" then local centerX = i.AbsolutePosition.X + (i.AbsoluteSize.X / 2)
            local centerY = i.AbsolutePosition.Y + (i.AbsoluteSize.Y / 2)
            VIM:SendMouseButtonEvent(centerX, centerY, Enum.UserInputType.MouseButton1.Value, true, player.PlayerGui, 1)
            VIM:SendMouseButtonEvent(centerX, centerY, Enum.UserInputType.MouseButton1.Value, false, player.PlayerGui, 1)
        end
    end
            task.wait(0.1)
        end
    end)
		else			
            if CL then CL:Cancel()
		    CL = nil
        end
    end
end
})

SB:AddToggle('MyToggle', {
    Text = '机会 自瞄 (无预判)',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        CA = state
        if state then
            if game.Players.LocalPlayer.Character.Name ~= "Chance" then
                Library:Notify("你用的角色好像不是机会,可能会出错", nil, 4590657391)
                return
                end
                local RemoteEvent = game:GetService("ReplicatedStorage")
                :WaitForChild("Modules")
                :WaitForChild("Network")
                :WaitForChild("RemoteEvent")
                CAbotConnection = RemoteEvent.OnClientEvent:Connect(function(...)
                local args = {...}
                if args[1] == "UseActorAbility" and args[2] == "Shoot" then
                local killerContainer = game.Workspace.Players:FindFirstChild("Killers")
                if killerContainer then local killer = killerContainer:FindFirstChildOfClass("Model")
                if killer and killer:FindFirstChild("HumanoidRootPart") then local killerHRP = killer.HumanoidRootPart
                local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if playerHRP then local AT = 4
                local endTime = tick() + AT
                while tick() < endTime do
                RunService.RenderStepped:Wait()
                local cam = workspace.CurrentCamera
                cam.CFrame = CFrame.new(cam.CFrame.Position, killerHRP.Position)
                playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, killerHRP.Position)
                end
            end
        end
    end
end
        end)
        else
                if CAbotConnection then
                CAbotConnection:Disconnect()
                CAbotConnection = nil
        end
    end
end
})

SB:AddToggle('MyToggle', {
    Text = '机会 自瞄 (预判)',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        CA = state
        if state then
        if game.Players.LocalPlayer.Character.Name ~= "Chance" then
        Library:Notify("你用的角色好像不是机会,可能会出错", nil, 4590657391)
        return
        end
        local RemoteEvent = game:GetService("ReplicatedStorage")
        :WaitForChild("Modules")
        :WaitForChild("Network")
        :WaitForChild("RemoteEvent")
        CAbotConnection = RemoteEvent.OnClientEvent:Connect(function(...)
        local args = {...}
        if args[1] == "UseActorAbility" and args[2] == "Shoot" then local killerContainer = game.Workspace.Players:FindFirstChild("Killers")
        if killerContainer then local killer = killerContainer:FindFirstChildOfClass("Model")
        if killer and killer:FindFirstChild("HumanoidRootPart") then local killerHRP = killer.HumanoidRootPart
        local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if playerHRP then local TMP = 0.2
        local AMD = 2
        local endTime = tick() + AMD
        while tick() < endTime do
        RunService.RenderStepped:Wait()
        local predictedTarget = killerHRP.Position + (killerHRP.Velocity * TMP)
        local cam = workspace.CurrentCamera
        cam.CFrame = CFrame.new(cam.CFrame.Position, predictedTarget)
        playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, predictedTarget)
                end
            end
        end
    end
end
end)
        else
            if CAbotConnection then
            CAbotConnection:Disconnect()
            CAbotConnection = nil
        end
    end
end
})


SB:AddToggle('MyToggle', {
    Text = '谢德利茨基 自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
        shedaim = state
        if state then
        if game.Players.LocalPlayer.Character.Name ~= "Shedletsky" then
            Library:Notify("你用的角色好像不是谢德利茨基,可能会出错", nil, 4590657391)
        return
end
          shedloop = game.Players.LocalPlayer.Character.Sword.ChildAdded:Connect(function(child)
          if not shedaim then return end
          if child:IsA("Sound") then local FAN = child.Name
          if FAN == "12222225" or FAN == "83851356262523" then local killersFolder = game.Workspace.Players:FindFirstChild("Killers")
          if killersFolder then local killer = killersFolder:FindFirstChildOfClass("Model")
          if killer and killer:FindFirstChild("HumanoidRootPart") then local killerHRP = killer.HumanoidRootPart
          local playerHRP = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
          if playerHRP then local num = 1
          local maxIterations = 100
          while num <= maxIterations do
          task.wait(0.01)
          num = num + 1
          workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, killerHRP.Position)
          playerHRP.CFrame = CFrame.lookAt(playerHRP.Position, killerHRP.Position)
                   end
             end
            end
        end
     end
end
end)
          else
          if shedloop then shedloop:Disconnect()
          shedloop = nil
        end
    end
end
})

SB:AddToggle('MyToggle', {
    Text = '访客自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
   guestaimbot(state)
end
})

SB:AddToggle('MyToggle', {
    Text = '披萨自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
   Elliotaimbot(state)
end
})

Cnm:AddToggle('MyToggle', {
    Text = '访客自动格挡 ',
    Default = false,
    Tooltip = '格挡',
    Callback = function(state)
 BlockEnabled = state
					if BlockEnabled then
						HawkTuah()
					end
end
})

SC:AddToggle('MyToggle', {
    Text = '1x4自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
    aimbot1x1x1x1(state)
end
})

SC:AddToggle('MyToggle', {
    Text = '酷小孩自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
    game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer("SetDevice", state and "Mobile" or "PC")
end
})

SC:AddToggle('MyToggle', {
    Text = '约翰自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
    johnaimbot(state)
end
})

SC:AddToggle('MyToggle', {
    Text = '杰森自瞄',
    Default = false,
    Tooltip = '自瞄',
    Callback = function(state)
    jasonaimbot(state)
end
})
local MyButton = ST:AddButton({
	Text = '动作:Subterfuge',
	Func = function()
Library:Notify("仅供测试，玩家可见动作，其余不可见", nil, 4590657391)
local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.PlatformStand = true
    humanoid:Move(Vector3.zero)

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")
    -- getting some emotes stuffs
    local emoteScript = require(game:GetService("ReplicatedStorage").Assets.Emotes._Subterfuge) --the script had been chanced his name in new update
    emoteScript.Created({Character = character})

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://87482480949358"
    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()
    
    -- character.HumanoidRootPart.PlayerEmoteSFX:Stop()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://132297506693854"
    sound.Parent = character:WaitForChild("HumanoidRootPart")
    sound.Volume = 5
    sound.Looped = false
    sound:Play()
    
    local args = {
        [1] = "PlayEmote",
        [2] = "Animations",
        [3] = "_Subterfuge"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    -- the emote script is broken so hands can't disappear
    startFollowingHead()
    game:GetService("Debris"):AddItem(character:FindFirstChild("PlayerEmoteHand"), 71)
    SubSing()
    animationTrack.Stopped:Connect(function()
        stopFollowingHead()
        humanoid.PlatformStand = false
        if bodyVelocity and bodyVelocity.Parent then
            bodyVelocity:Destroy()
        end
    end)
	end,
	DoubleClick = false,
	Tooltip = '...'
})

local MyButton = ST:AddButton({
	Text = '动作:Miss The Quiet',
	Func = function()
Library:Notify("仅供测试，玩家可见动作，其余不可见", nil, 4590657391)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.PlatformStand = true
    humanoid:Move(Vector3.zero)

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")
    -- getting some emotes stuffs
    local emoteScript = require(game:GetService("ReplicatedStorage").Assets.Emotes._MissTheQuiet) --the script had been chanced his name in new update
    emoteScript.Created({Character = character})
    -- emoteScript adds the lighting itself
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://100986631322204"
    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://131936418953291"
    sound.Parent = character:WaitForChild("HumanoidRootPart")
    sound.Volume = 1
    sound.Looped = false
    sound:Play()

    local args = {
        [1] = "PlayEmote",
        [2] = "Animations",
        [3] = "_MissTheQuiet"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    -- the emote script is broken so hands can't disappear
    startFollowingHead()
    game:GetService("Debris"):AddItem(character:FindFirstChild("PlayerEmoteHand"), 240)
    game:GetService("Debris"):AddItem(character:FindFirstChild("EmoteHat"), 240) -- lighting is in the hat now
    -- unfreeze because something happend.
    wait(242) -- to fix the bug where animation still plays
    animationTrack:Stop()
    animationTrack.Stopped:Connect(function()
        stopFollowingHead()
        humanoid.PlatformStand = false
        if bodyVelocity and bodyVelocity.Parent then
            bodyVelocity:Destroy()
        end
    end)
    
	end,
	DoubleClick = false,
	Tooltip = '...'
})

local MyButton = ST:AddButton({
	Text = '动作:Silly Billy',
	Func = function()
Library:Notify("仅供测试，玩家可见动作，其余不可见", nil, 4590657391)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.PlatformStand = true
    humanoid:Move(Vector3.zero)

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")
    -- getting some emotes stuffs
    local emoteScript = require(game:GetService("ReplicatedStorage").Assets.Emotes._SillyBilly) --the script had been chanced his name in new update
    emoteScript.Created({Character = character})

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://107464355830477"
    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://77601084987544"
    sound.Parent = character:WaitForChild("HumanoidRootPart")
    sound.Volume = 1
    sound.Looped = false
    sound:Play()

    local args = {
        [1] = "PlayEmote",
        [2] = "Animations",
        [3] = "_SillyBilly"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    
    startFollowingHead()
    game:GetService("Debris"):AddItem(character:FindFirstChild("SillyBillyMicrophone"), 44)
    -- unfreeze because something happend
    animationTrack.Stopped:Connect(function()
        stopFollowingHead()
        humanoid.PlatformStand = false
        if bodyVelocity and bodyVelocity.Parent then
            bodyVelocity:Destroy()
        end
    end)
	end,
	DoubleClick = false,
	Tooltip = '...'
})

local MyButton = ST:AddButton({
	Text = '动作:Silly of it',
	Func = function()
	Library:Notify("仅供测试，玩家可见动作，其余不可见", nil, 4590657391)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.PlatformStand = true
    humanoid:Move(Vector3.zero)

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")
    -- getting some emotes stuffs
    local emoteScript = require(game:GetService("ReplicatedStorage").Assets.Emotes._SillyBilly) --the script had been chanced his name in new update
    emoteScript.Created({Character = character})

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://107464355830477"
    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://120176009143091"
    sound.Parent = character:WaitForChild("HumanoidRootPart")
    sound.Volume = 1
    sound.Looped = false
    sound:Play()

    local args = {
        [1] = "PlayEmote",
        [2] = "Animations",
        [3] = "_SillyBilly"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
    
    startFollowingHead()
    game:GetService("Debris"):AddItem(character:FindFirstChild("SillyBillyMicrophone"), 44)
    -- unfreeze because something happend
    animationTrack.Stopped:Connect(function()
        stopFollowingHead()
        humanoid.PlatformStand = false
        if bodyVelocity and bodyVelocity.Parent then
            bodyVelocity:Destroy()
        end
    end)
	end,
	DoubleClick = false,
	Tooltip = '...'
})

local MyButton = ST:AddButton({
	Text = '动作:Shucks',
	Func = function()
	Library:Notify("仅供测试，玩家可见动作，其余不可见", nil, 4590657391)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.PlatformStand = true
    humanoid:Move(Vector3.zero)

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")

    local emoteScript = require(game:GetService("ReplicatedStorage").Assets.Emotes.Shucks)
    emoteScript.Created({Character = character})

    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://74238051754912"
    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()

    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://123236721947419"
    sound.Parent = character:WaitForChild("HumanoidRootPart")
    sound.Volume = 0.5
    sound.Looped = false
    sound:Play()

    local args = {
        [1] = "PlayEmote",
        [2] = "Animations",
        [3] = "Shucks"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))

    game:GetService("Debris"):AddItem(character:FindFirstChild("Saw"), 24)
    game:GetService("Debris"):AddItem(character:FindFirstChild("PlayerEmoteHand"), 24)

    animationTrack.Stopped:Connect(function()
        humanoid.PlatformStand = false
        if bodyVelocity and bodyVelocity.Parent then
            bodyVelocity:Destroy()
        end
    end)
	end,
	DoubleClick = false,
	Tooltip = '...'
})

SG:AddToggle('MyToggle', {
    Text = '动作:VIP (旧音频)',
    Default = false,
    Tooltip = '动作',
    Callback = function(state)
    activatethehakari(state)
end
})



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

Library:SetWatermark(('欢迎: %s | %s fps | %s ping'):format(
    game.Players.LocalPlayer.Name,  
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
ThemeManager:SetFolder('ht')
SaveManager:SetFolder('h/y')

-- 在选项卡的右侧构建我们的配置菜单
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- 在左侧构建我们的主题菜单（包含大量内置主题）-注意:您也可以调用ThemeManager:ApplyToGroupbox将其添加到特定的分组框中
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- 您可以使用SaveManager:LoadAutoloadConfig（）来加载一个配置-该配置已被标记为自动加载！
SaveManager:LoadAutoloadConfig()
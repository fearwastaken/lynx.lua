game:GetService("Players").LocalPlayer.Character.InternationalFedora.Name = 'fe1'
game:GetService("Players").LocalPlayer.Character.InternationalFedora.Name = 'fe3'
game:GetService("Players").LocalPlayer.Character["International Fedora"].Name = 'fe2'
game:GetService("Players").LocalPlayer.Character["International Fedora"].Name = 'fe4'
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,-30,0)
wait(0.5)
end)
end
end

local LocalPlayer = game.Players.LocalPlayer

function Create(HatName, position, rotation, part)
Instance.new("Attachment",game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle)
Instance.new("AlignPosition",game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle)
Instance.new("AlignOrientation", game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle)
Instance.new("Attachment",game:GetService("Workspace")[LocalPlayer.Name][part])
workspace[LocalPlayer.Name][part].Attachment.Name = HatName
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AccessoryWeld:Destroy()
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignPosition.Attachment0 = game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.Attachment
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignOrientation.Attachment0 = game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.Attachment
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignPosition.Attachment1 = game:GetService("Workspace")[LocalPlayer.Name][part][HatName]
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignOrientation.Attachment1 = game:GetService("Workspace")[LocalPlayer.Name][part][HatName]
game:GetService("Workspace")[LocalPlayer.Name][part][HatName].Position = position
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.Attachment.Rotation = rotation
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignPosition.Responsiveness = 200
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignOrientation.Responsiveness = 200
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignPosition.RigidityEnabled = true
game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.AlignOrientation.RigidityEnabled = true
end

function Edit(HatName, position, rotation, part)
    game:GetService("Workspace")[LocalPlayer.Name][HatName].Handle.Attachment.Rotation = rotation
    game:GetService("Workspace")[LocalPlayer.Name][part][HatName].Position = position
end

function rmesh(HatName)
for _,mesh in next, workspace[LocalPlayer.Name][HatName]:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

Create('fe1',Vector3.new(0,1.5,0),Vector3.new(0,0,0),'Right Arm')
Create('fe2',Vector3.new(0,1.5,0),Vector3.new(0,0,0),'Left Arm')
Create('fe3',Vector3.new(0,1.5,0),Vector3.new(0,0,0),'Left Leg')
Create('fe4',Vector3.new(0,1.5,0),Vector3.new(0,0,0),'Right Leg')
Create('Hat1',Vector3.new(0,-1.4,0),Vector3.new(0,90,0),'Torso')

rmesh('fe1')
rmesh('fe2')
rmesh('fe3')
rmesh('fe4')
rmesh('Hat1')




sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",1.0000000331814e+32)

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,-25.05,0)
wait(0.5)
end)
end
end

local Fling = true --// Recommended: true
local FlingBlockInvisible = true --// Recommended: false (So you can see the flinging block)
local HighlightFlingBlock = true --// Recommended: true
local FlingHighlightColor = Color3.fromRGB(30,255,30)
 
-- // Uses Mizt's bypass \\ --
 
Bypass = "death"
loadstring(game:GetObjects("rbxassetid://5325226148")[1].Source)()

e = Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)
e.Velocity = Vector3.new(0,-25.05,0)
e.P = math.huge
--e.MaxForce = Vector3.new(0,3000,0)
 
local IsDead = false
local StateMover = true
 
local playerss = workspace.non
local bbv,bullet
if Bypass == "death" then
 bullet = game.Players.LocalPlayer.Character["HumanoidRootPart"]
 bullet.Transparency = (FlingBlockInvisible ~= true and 0 or 1)
 bullet.Massless = true
 if bullet:FindFirstChildOfClass("Attachment") then
  for _,v in pairs(bullet:GetChildren()) do
   if v:IsA("Attachment") then
    v:Destroy()
   end
  end
 end
 
 bbv = Instance.new("BodyPosition",bullet)
    bbv.Position = playerss.Torso.Position
end
 
if Bypass == "death" then
coroutine.wrap(function()
 while true do
  if not playerss or not playerss:FindFirstChildOfClass("Humanoid") or playerss:FindFirstChildOfClass("Humanoid").Health <= 0 then IsDead = true; return end
  if StateMover then
   bbv.Position = playerss.Torso.Position
      bullet.Position = playerss.Torso.Position
  end
  game:GetService("RunService").RenderStepped:wait()
 end
end)()
end

if HighlightFlingBlock ~= false then
    local Highlight = Instance.new("SelectionBox")
    Highlight.Adornee = bullet
    Highlight.Color3 = (typeof(FlingHighlightColor)=="Color3" and FlingHighlightColor) or (Color3.fromRGB(255,0,0))
    Highlight.Parent = bullet
    Highlight.Name = "HighlightBox"
end
 
bbav = Instance.new("BodyAngularVelocity",bullet)
    bbav.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
    bbav.P = 100000000000000000000000000000
    bbav.AngularVelocity = Vector3.new(10000000000000000000000000000000,100000000000000000000000000,100000000000000000)

local Player=game.Players.LocalPlayer local Character=workspace.non local hum = Character.Humanoid local LeftArm=Character["Left Arm"] local LeftLeg=Character["Left Leg"] local RightArm=Character["Right Arm"] local RightLeg=Character["Right Leg"] local Root=Character["HumanoidRootPart"] local Head=Character["Head"] local Torso=Character["Torso"] local Neck=Torso["Neck"] local mouse = Player:GetMouse() local position = nil local sine = 0 local t = 0 local change = 1

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
 
local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
 
local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
 
local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
 
local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
 
local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
 
local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

function swait(num)
 if num == 0 or num == nil then
  game:service("RunService").Stepped:wait(0)
 else
  for i = 0, num do
   game:service("RunService").Stepped:wait(0)
  end
 end
end

m = game.Players.LocalPlayer:GetMouse()

cry = false
idle = true

toggle = false

m.KeyDown:connect(function(k)
if k == "q" then
Character.Humanoid.WalkSpeed = 100
end
end)

m.KeyUp:connect(function(k)
if k == "q" then
Character.Humanoid.WalkSpeed = 16
end
end)

m.KeyDown:Connect(function(k)
if k == 'f' then
if toggle == false then
toggle = true
cry = true 
idle = false
elseif toggle then
toggle = false
cry = false
idle = true
end
end
end)

coroutine.wrap(function() -------Checks
while true do
if idle then
if Root.Velocity.y > 1 then
position = "jump"
elseif Root.Velocity.y < -1 then
position = "fall"
elseif Root.Velocity.Magnitude < 2 position = "idle" position = "walk"> 20 then
position = "run"
end
end
wait()
end
end)()

coroutine.wrap(function() -------Checks
while true do
if cry then
if Root.Velocity.y > 1 then
position = "jump"
elseif Root.Velocity.y < -1 then
position = "fall"
elseif Root.Velocity.Magnitude < 2 position = "idle2" position = "walk"> 20 then
position = "run"
end
end
wait()
end
end)()

coroutine.wrap(function()
while true do
sine = sine + change
if position == "idle" then
change = 1
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), -1 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + -7 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 1 + -0.1 * math.sin(sine/12)) * CFrame.Angles(math.rad(-120 + 5 * math.sin(sine/12)), math.rad(-70 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12), 1 + -0.1 * math.sin(sine/12)) * CFrame.Angles(math.rad(-120 + 5 * math.sin(sine/12)), math.rad(70 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1.8 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-30 + -7 * math.sin(sine/12)), math.rad(10 + 0 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12))),0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1.8 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-30 + -7 * math.sin(sine/12)), math.rad(-10 + 0 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12))),0.1)
elseif position == "walk" then
change = 1
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 2 + 0.1 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 40 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + -40 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 4 + 0.1 * math.sin(sine/12), 0.3 + 0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(-5 + -20 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 4 + 0.1 * math.sin(sine/12), 0.3 + -0.3 * math.sin(sine/12)) * CFrame.Angles(math.rad(-5 + 20 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
elseif position == "run" then
change = 5
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 2 + 0.2 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-10 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-85 + 5 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0.5 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-85 + 5 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 4 + 0.5 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-1 + -100 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 4 + -0.5 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-1 + 100 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
elseif position == "jump" then
--clerp here
elseif position == "fall" then
--clerp here
elseif position == "idle2" then
change = 1.3
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0 + 0 * math.sin(sine/12), 2 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 20 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-150 + 0 * math.sin(sine/12)), math.rad(-100 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12), 1 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(-150 + 0 * math.sin(sine/12)), math.rad(100 + 0 * math.sin(sine/12)), math.rad(0 + 0 * math.sin(sine/12))),0.1)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5 + 0 * math.sin(sine/12), 4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 20 * math.sin(sine/12)), math.rad(-4 + 0 * math.sin(sine/12)), math.rad(-2 + 0 * math.sin(sine/12))),0.1)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5 + 0 * math.sin(sine/12), 4 + 0 * math.sin(sine/12), 0 + 0 * math.sin(sine/12)) * CFrame.Angles(math.rad(0 + 20 * math.sin(sine/12)), math.rad(4 + 0 * math.sin(sine/12)), math.rad(2 + 0 * math.sin(sine/12))),0.1)
end
swait()
end
end)()

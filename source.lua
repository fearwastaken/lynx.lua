local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("lynx.lua", "DarkTheme")


local MainTab = Window:NewTab("Dashboard")
local MainSection = UniversalTab:NewSection("Dashboard")
local UniversalTab = Window:NewTab("Universal")
local UniversalSection = UniversalTab:NewSection("Universal")
local LocalPlayerTab = Window:NewTab("LocalPlayer")
local LocalPLRSection = LocalPlayerTab:NewSection("LocalPlayer")

--dashboard

MainSection:NewLabel("Welcome! Thanks for using lynx.lua, start going to universal to begin.")
MainSection:NewLabel("You should also try out the serverside it is great!")

--universal scripts

UniversalSection:NewButton("Infinite Yield", "most basic script ever", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

UniversalSection:NewButton("Block Pistol", "Must have the Red-Roblox-Cap and Pal-Hair", function()
	loadstring(game:HttpGet(("https://pastebin.com/raw/Bju4We3f"), true))()
end)

UniversalSection:NewButton("Laser Arm", "Must have Pal-Hair and Wear any 9 other hats/hair", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/rouxhaver/scripts-2/main/FE%20Laser%20Arm.Lua'))()
end)

UniversalSection:NewLabel("more scripts soon")

---LocalPlayer
LocalPLRSection:NewSlider("WalkSpeed", "brrrrrrrrrrr", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

LocalPLRSection:NewSlider("Jumppower", "brrrrrrrrr", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

LocalPLRSection:NewButton("Fly", "vroooooooom", function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/RkUtdYb0'), true))()
end)

end

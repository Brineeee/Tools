--Made by xSupFC#0945 | dont be skidded :) 
local Kavo = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Brineeee/UI-Library/main/Kavo-New')))()
local Window = Kavo.CreateLib("Scripting Hub", "BloodTheme")

local Tab1S = Window:NewTab("Home")
local Tab1 = Tab1S:NewSection("R-Spy")
local Tab11 = Tab1S:NewSection("Obfuscator")
Tab1:NewButton("Remote Spy","Helps you to make your own scripts!", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
end)
Tab1:NewLabel("Position")
local sss = Tab1:NewToggle("You are in : nil", "Clicking this will nothing happens.")

Tab1:NewButton("Copy Position","Helps you to make your own scripts!", function()
   setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
end)
Tab11:NewTextBox("Type to Obfuscate","Helps you to make your own scripts!", function(o)
_G.Obfuscator = o
end)
Tab11:NewButton("Start Obfuscate [ Auto SetClipboard ]","Helps you to make your own scripts!", function()
local thing = _G.Obfuscator

local encoded = thing:gsub(".", function(bb) return "\\" .. bb:byte() end) or thing .. "\""
setclipboard(encoded)
end)

Tab11:NewLabel("Put the loadstring('') when your obfuscate finished \nAfter it put the number on '' and now try to execute it")

while true do wait(0)
  sss:UpdateToggle("You are in : \n".. tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)) 
end 

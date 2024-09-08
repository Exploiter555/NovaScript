local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Build A Boat V.3 OP Made By junear2554", "BloodTheme")
-- Tabs
 
local Tab1 = Window:NewTab("Script 1")
local Tab1Section = Tab1:NewSection("Quest Old")
 
-- Buttons/Windows/Idk
 
Tab1Section:NewButton("Fabbi Quest", "Loads in the fabbie boss (you need to be leader for this to work", function()
    workspace.QuestMakerEvent:FireServer(100)
end)
 
Tab1Section:NewButton("gingerbread fight", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
    workspace.QuestMakerEvent:FireServer(99)
end)
 
Tab1Section:NewButton("Chirstmas fight", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
    workspace.QuestMakerEvent:FireServer(101)
end)
 
local Tab1 = Window:NewTab("Teleport game World")
local Tab1Section = Tab1:NewSection("Teleport World Old")
 
Tab1Section:NewButton("Halloween Boss (Spider​ fight)​", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
    game:GetService"TeleportService":Teleport(1930665568)
end)
 
Tab1Section:NewButton("Chirstmas Wave (Boss​ fight)​", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
    game:GetService"TeleportService":Teleport(1930866268)
end)
 
local Tab1 = Window:NewTab("Misc")
local Tab1Section = Tab1:NewSection("Misc")
 
Tab1Section:NewButton("Infinte yelid", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
 
Tab1Section:NewButton("Auto Fram", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
local a,b,c = "juywvm","main","babft";loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/-Roblox-Projects-/%s/%s"):format(a, b, c)))() 
end)
 
Tab1Section:NewButton("Steal Build", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/StenDirt/Trash-Game/main/Script.lua"))()
end)
 
local Tab1 = Window:NewTab("Buy Chest")
local Tab1Section = Tab1:NewSection("Buy Chest")
 
Tab1Section:NewButton("Common", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
local args = {
    [1] = "Common Chest",
    [2] = 1
}
 
workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
end)
 
Tab1Section:NewButton("Uncommon Chest", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
local args = {
    [1] = "Uncommon Chest",
    [2] = 1
}
 
workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
end)
 
Tab1Section:NewButton("Rare Chest", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
local args = {
    [1] = "Rare Chest",
    [2] = 1
}
 
workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
end)
 
Tab1Section:NewButton("Legendary Chest", "Loads in the gingerbread Fight (you need to be leader for this to work", function()
local args = {
    [1] = "Legendary Chest",
    [2] = 1
}
 
workspace.ItemBoughtFromShop:InvokeServer(unpack(args))
end)
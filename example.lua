debugX = true

local PomeloUI = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = PomeloUI:CreateWindow({
   Name = "POMELO UI Example Window",
   Icon = 0, 
   LoadingTitle = "POMELO UI Interface Suite",
   LoadingSubtitle = "by Sirius",
   Theme = "Default", 

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, 

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, 
      Invite = "noinvitelink", 
      RememberJoins = true 
   },

   KeySystem = false, 
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", 
      FileName = "Key", 
      SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"Hello"} 
   }
})

local Tab = Window:CreateTab("Tab Example", 4483362458) 

local Section = Tab:CreateSection("Section Example")

local Button = Tab:CreateButton({
   Name = "Button Example",
   Callback = function()
   
   end,
})

PomeloUI:LoadConfiguration()

local Players = game:GetService('Players')
local lplr = Players.LocalPlayer
local httprequest = (http and http.request or http_request or fluxus and fluxus.request or syn and syn.request or request)
local clonefunc = (clonefunction or clonefunc or function(func) return func end)
local executor = (identifyexecutor or getexecutorname or function() return 'your executor' end)()
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

if not isfolder('vape') then while true do end lplr:Kick("wheres vape?") task.wait(9e9) end

function reset()
    if isfolder('vape/Render') then delfolder('vape') lplr:Kick('Uninstalled Render. Please Install Velocity.') end
    if isfolder('vape/Profiles') then
        delfolder('vape/Profiles')
        makefolder('vape/Profiles')
    else
        if isfolder('vape') then
            if not isfolder('vape/Profiles') then
                lplr:Kick("Please install Velocity again.")
            end
        end
    end
end

function raf(url)
    return httprequest({Url = url, Method='GET'}).Body
end

local Window = Rayfield:CreateWindow({
    Name = "Rita Clients",
    LoadingTitle = "Installer is loading..",
    LoadiConfiguration= "Get Ready..",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "Rita Clients"
    },
    Discord = {
       Enabled = true,
       Invite = "efRFdBxv",
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


 function notify(title, content, time)
    Rayfield:Notify({
            Title = title,
            Content = content,
            Duration = time,
            Actions = {
            Close = {
                 Name = "Close",
                 Callback = function()
                    print('closed')
                end
             },
         },
      })
 end
 
 local m = Window:CreateTab("Main")
 local i = Window:CreateTab("Installer")

 local mw = m:CreateSection("Welcome to RC Loader. (Rita Clients). To get started, head to the Installer Tab.")

 local closebtn = m:CreateButton({
    Name = "Close",
    Callback = function()
        Rayfield:Destroy()
    end,
 })

 local ibtn = i:CreateButton({
    Name = "Install",
    Callback = function()
       -- notify('Rita Clients Information', 'Rita Clients is still in development. Please wait for the release on the discord.', 6)
          notify('Information', 'Please wait..', 3)
         reset()
    end
 })

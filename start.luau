---> [definition]
local Players: Players = game:GetService('Players');
local lplr: Player = Players.LocalPlayer;

---> [functions]

local httprequest = (http and http.request or http_request or fluxus and fluxus.request or syn and syn.request or request);
local clonefunc = (clonefunction or clonefunc or function(func) return func end);
local library: any = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

---> [boot up]

if not isfolder('rendervape') then
     return lplr:Kick('You need to install Render Vape first.');
end;

--> [ui]

local window: any = library:MakeWindow({ Name = "Installation", HidePremium = false, SaveConfig = false, ConfigFolder = "EInstallation" });
local installer: any = window:MakeTab({
     Name = "Install",
     PremiumOnly = false
});

library:Init()

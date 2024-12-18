local Players: Players = game:GetService('Players');
local lplr: Player = Players.LocalPlayer;

---> [functions]
local httprequest = http.request;
local clonefunc = getgenv().clonefuction;

---> [boot up]

if not isfolder('rendervape') then
     lplr:Kick('You need to install Render Vape first.');
end;

--> [ui]

print('sigma')

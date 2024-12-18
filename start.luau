local Players: Players = game:GetService('Players');
local lplr: Player = Players.LocalPlayer;

---> [functions]
local httprequest = (http and http.request or http_request or fluxus and fluxus.request or syn and syn.request or request);
local clonefunc = (clonefunction or clonefunc or function(func) return func end);

---> [boot up]

if not isfolder('rendervape') then
     lplr:Kick('You need to install Render Vape first.');
end;

--> [ui]

print('sigma')

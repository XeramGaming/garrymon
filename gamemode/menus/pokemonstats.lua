    surface.CreateFont( "TheDefaultSettings2", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = ScrW()/20,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

cb = Material( "materials/vgui/logos/ui/close.png")

--first pokemon in party
local ourMat = Material( "materials/vgui/logos/ui/background.jpg") -- background image
local mdl1 = "models/rtbmodels/pokemon/bulbasaur.mdl" -- model of the player's first pokemon
local pball = Material( "materials/vgui/logos/ui/pokeball2.png") -- the pokeball the pokemon was caught in
local gender = Material( "materials/vgui/logos/ui/Male_Symbol.png") -- gender
local lvl = 45 --level of the pokemon
local dexno = "001 Bulbasaur" --pokedex number
local hp = "120/120" --hp of pokemon
local atk = 113 -- attack of pokemon
local def = 93 --defence of pokemon
local spatk = 113 --sp attack of pokemon
local spdef = 95 --spdef of pokemon
local spd = 115 --spd of pokemon

local move1 = "Flame Thrower" --first move
local move2 = "Takedown" --second
local move3 = "Fire Fang" --3rd
local move4 = "Growl" --4th

local nat = "Serious" --nature of pokemon
local abil = "Inner Focus" --ability of pokemon
local item = "Oran Berry" --Item held by the pokemon

local ptype = Material( "materials/vgui/logos/ui/type-fire.png") -- type of the pokemon(fire,water,etc)

--2nd pokemon in party
local mdl2 = "models/rtbmodels/pokemon/charmander.mdl" 
local pball2 = Material( "materials/vgui/logos/ui/gb.png") -- the pokeball the pokemon was caught in
local gender2 = Material( "materials/vgui/logos/ui/Male_Symbol.png") -- gender
local lvl2 = 10 --level of the pokemon
local dexno2 = "05 Charmander" --pokedex number
local hp2 = "24/24" --hp of pokemon
local atk2 = 24 -- attack of pokemon
local def2 = 20 --defence of pokemon
local spatk2 = 16 --sp attack of pokemon
local spdef2 = 6 --spdef of pokemon
local spd2 = 18 --spd of pokemon

local move12 = "Ember" --first move
local move22 = "Tackle" --second
local move32 = "Fire Fang" --3rd
local move42 = "Growl" --4th

local nat2 = "Happy" --nature of pokemon
local abil2 = "Flame Body" --ability of pokemon
local item2 = "Leftovers" --Item held by the pokemon

local ptype2 = Material( "materials/vgui/logos/ui/type-fire.png") -- type of the pokemon(fire,water,etc)

local arrow = Material( "materials/vgui/logos/ui/1195445238199413807jean_victor_balin_arrow_blue_right.svg.med.png")
local arrow2 = Material( "materials/vgui/logos/ui/arrow2.png")
local circle = Material( "materials/vgui/logos/ui/a-black-circle-hi.png")

--3rd pokemon in party
local ourMat = Material( "materials/vgui/logos/ui/background.jpg") -- background image
local mdl3 = "models/rtbmodels/pokemon/squirtle.mdl" -- model of the player's first pokemon
local pball3 = Material( "materials/vgui/logos/ui/pokeball2.png") -- the pokeball the pokemon was caught in
local gender3 = Material( "materials/vgui/logos/ui/Male_Symbol.png") -- gender
local lvl3 = 45 --level of the pokemon
local dexno3 = "001 Squirtle" --pokedex number
local hp3 = "120/120" --hp of pokemon
local atk3 = 113 -- attack of pokemon
local def3 = 93 --defence of pokemon
local spatk3 = 113 --sp attack of pokemon
local spdef3 = 95 --spdef of pokemon
local spd3 = 115 --spd of pokemon

local move13 = "Flame Thrower" --first move
local move23 = "Takedown" --second
local move33 = "Fire Fang" --3rd
local move43 = "Growl" --4th

local nat3 = "Serious" --nature of pokemon
local abil3 = "Inner Focus" --ability of pokemon
local item3 = "Oran Berry" --Item held by the pokemon

local ptype3 = Material( "materials/vgui/logos/ui/type-fire.png") -- type of the pokemon(fire,water,etc)

--4th pokemon in party
local ourMat = Material( "materials/vgui/logos/ui/background.jpg") -- background image
local mdl4 = "models/rtbmodels/pokemon/charmander.mdl" -- model of the player's first pokemon
local pball4 = Material( "materials/vgui/logos/ui/pokeball2.png") -- the pokeball the pokemon was caught in
local gender4 = Material( "materials/vgui/logos/ui/Male_Symbol.png") -- gender
local lvl4 = 45 --level of the pokemon
local dexno4 = "004 Charmander" --pokedex number
local hp4 = "120/120" --hp of pokemon
local atk4 = 113 -- attack of pokemon
local def4 = 93 --defence of pokemon
local spatk4 = 113 --sp attack of pokemon
local spdef4 = 95 --spdef of pokemon
local spd4 = 115 --spd of pokemon

local move14 = "Flame Thrower" --first move
local move24 = "Takedown" --second
local move34 = "Fire Fang" --3rd
local move44 = "Growl" --4th

local nat4 = "Serious" --nature of pokemon
local abil4 = "Inner Focus" --ability of pokemon
local item4 = "Oran Berry" --Item held by the pokemon

local ptype4 = Material( "materials/vgui/logos/ui/type-fire.png") -- type of the pokemon(fire,water,etc)

--5th pokemon in party
local ourMat = Material( "materials/vgui/logos/ui/background.jpg") -- background image
local mdl5 = "models/rtbmodels/pokemon/charmander.mdl" -- model of the player's first pokemon
local pball5 = Material( "materials/vgui/logos/ui/pokeball2.png") -- the pokeball the pokemon was caught in
local gender5 = Material( "materials/vgui/logos/ui/Male_Symbol.png") -- gender
local lvl5 = 45 --level of the pokemon
local dexno5 = "004 Charmander" --pokedex number
local hp5 = "120/120" --hp of pokemon
local atk5 = 113 -- attack of pokemon
local def5 = 93 --defence of pokemon
local spatk5 = 113 --sp attack of pokemon
local spdef5 = 95 --spdef of pokemon
local spd5 = 115 --spd of pokemon

local move15 = "Flame Thrower" --first move
local move25 = "Takedown" --second
local move35 = "Fire Fang" --3rd
local move45 = "Growl" --4th

local nat5 = "Serious" --nature of pokemon
local abil5 = "Inner Focus" --ability of pokemon
local item5 = "Oran Berry" --Item held by the pokemon

local ptype5 = Material( "materials/vgui/logos/ui/type-fire.png") -- type of the pokemon(fire,water,etc)

--6th pokemon in party
local ourMat = Material( "materials/vgui/logos/ui/background.jpg") -- background image
local mdl6 = "models/rtbmodels/pokemon/charmander.mdl" -- model of the player's first pokemon
local pball6 = Material( "materials/vgui/logos/ui/pokeball2.png") -- the pokeball the pokemon was caught in
local gender6 = Material( "materials/vgui/logos/ui/Male_Symbol.png") -- gender
local lvl6 = 45 --level of the pokemon
local dexno6 = "004 Charmander" --pokedex number
local hp6 = "120/120" --hp of pokemon
local atk6 = 113 -- attack of pokemon
local def6 = 93 --defence of pokemon
local spatk6 = 113 --sp attack of pokemon
local spdef6 = 95 --spdef of pokemon
local spd6 = 115 --spd of pokemon

local move16 = "Flame Thrower" --first move
local move26 = "Takedown" --second
local move36 = "Fire Fang" --3rd
local move46 = "Growl" --4th

local nat6 = "Serious" --nature of pokemon
local abil6 = "Inner Focus" --ability of pokemon
local item6 = "Oran Berry" --Item held by the pokemon

local ptype6 = Material( "materials/vgui/logos/ui/type-fire.png") -- type of the pokemon(fire,water,etc)

concommand.Add("statsderma", function()
DermaFrame = vgui.Create( "DFrame" )
DermaFrame:SetPos( 0, 0)
DermaFrame:SetTitle(" ")
DermaFrame:SetSize( ScrW(), ScrH())
DermaFrame:SetVisible( true )
DermaFrame:MakePopup()
DermaFrame:ShowCloseButton(false)
DermaFrame:SetDraggable(false)

InfoPanel = vgui.Create( "DButton", DermaFrame ); -- Create the button
	InfoPanel:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/1.5, ScrH()/30 ); -- Set the position of the button
	InfoPanel:SetText( " " ); -- What does the button say (On top)
	InfoPanel.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel:DoClick()
RunConsoleCommand("closestatsderma")
RunConsoleCommand("statsderma6")
end

InfoPanel2 = vgui.Create( "DButton", DermaFrame ); -- Create the button
	InfoPanel2:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/1.2, ScrH()/30 ); -- Set the position of the button
	InfoPanel2:SetText( " " ); -- What does the button say (On top)
	InfoPanel2.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel2:DoClick()
RunConsoleCommand("closestatsderma")
RunConsoleCommand("statsderma2")
end

InfoPanelll = vgui.Create( "DButton", DermaFrame ); -- Create the button
	InfoPanelll:SetSize(  ScrW()/25, ScrH()/20 ); -- Set the size of the button
	InfoPanelll:SetPos( ScrW()/1.1, ScrH()/30 ); -- Set the position of the button
	InfoPanelll:SetText( " " ); -- What does the button say (On top)
	InfoPanelll.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanelll:GetWide(), InfoPanelll:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanelll:DoClick()
RunConsoleCommand("closestatsderma")
end


local icon = vgui.Create( "DModelPanel", DermaFrame )
icon:SetSize( 300, 300 )
function icon:LayoutEntity( Entity ) return end -- disables default rotation
icon:SetPos(ScrW()/1.5,ScrH()/15)
icon:SetModel( mdl1 )
icon:SetCamPos( Vector( 100,10, 50 ) )

DermaFrame.Paint = function()
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/45, ScrH()/20, 80, 80 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( gender ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/3.5, ScrH()/19.5, 70, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ptype ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.39, ScrH()/2.3, 120, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.2, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.5, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( cb) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.1, ScrH()/30, ScrW()/25, ScrH()/20 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.45, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.4, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.35, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.31, ScrH()/30, ScrW()/50, ScrH()/50 )
	
		surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.269, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.23, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	draw.DrawText( "Bulbasaur", "TheDefaultSettings2", ScrW()/6.3, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( lvl, "TheDefaultSettings2", ScrW()/2.2, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( dexno, "TheDefaultSettings2", ScrW()/3, ScrH()/6.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( hp, "TheDefaultSettings2", ScrW()/2.5, ScrH()/4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( atk, "TheDefaultSettings2", ScrW()/2.5, ScrH()/3.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( def, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.5, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spatk, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.09, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spdef, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.79, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spd, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.57, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( nat, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.39, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( abil, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.25, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( item, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.14, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move1, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.6, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move2, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move3, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.27, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move4, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.15, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end
end)

concommand.Add("statsderma2", function()
DermaFrame2 = vgui.Create( "DFrame" )
DermaFrame2:SetPos( 0, 0)
DermaFrame2:SetSize( ScrW(), ScrH())
DermaFrame2:SetVisible( true )
DermaFrame2:MakePopup()
DermaFrame2:SetTitle("")
DermaFrame2:SetDraggable(false)
DermaFrame2:ShowCloseButton(false)

local icon2 = vgui.Create( "DModelPanel", DermaFrame2 )
icon2:SetSize( 300, 300 )
function icon2:LayoutEntity( Entity ) return end -- disables default rotation
icon2:SetPos(ScrW()/1.5,ScrH()/15)
icon2:SetModel( mdl2 )
icon2:SetCamPos( Vector( 100,0,0) )

InfoPanel = vgui.Create( "DButton", DermaFrame2 ); -- Create the button
	InfoPanel:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/1.5, ScrH()/30 ); -- Set the position of the button
	InfoPanel:SetText( " " ); -- What does the button say (On top)
	InfoPanel.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel:DoClick()
RunConsoleCommand("closestatsderma2")
RunConsoleCommand("statsderma")
end

InfoPanel2 = vgui.Create( "DButton", DermaFrame2 ); -- Create the button
	InfoPanel2:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/1.2, ScrH()/30 ); -- Set the position of the button
	InfoPanel2:SetText( " " ); -- What does the button say (On top)
	InfoPanel2.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel2:DoClick()
RunConsoleCommand("closestatsderma2")
RunConsoleCommand("statsderma3")
end

InfoPanelll = vgui.Create( "DButton", DermaFrame2 ); -- Create the button
	InfoPanelll:SetSize(  ScrW()/25, ScrH()/20 ); -- Set the size of the button
	InfoPanelll:SetPos( ScrW()/1.1, ScrH()/30 ); -- Set the position of the button
	InfoPanelll:SetText( " " ); -- What does the button say (On top)
	InfoPanelll.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanelll:GetWide(), InfoPanelll:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanelll:DoClick()
RunConsoleCommand("closestatsderma2")
end


DermaFrame2.Paint = function()
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball2	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/90, ScrH()/20, 80, 80 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( gender2 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/3.2, ScrH()/19.5, 70, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ptype2 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.39, ScrH()/2.3, 120, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( cb) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.1, ScrH()/30, ScrW()/25, ScrH()/20 )
	
	draw.DrawText( "Charmander", "TheDefaultSettings2", ScrW()/5.5, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( lvl2, "TheDefaultSettings2", ScrW()/2.2, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( dexno2, "TheDefaultSettings2", ScrW()/3, ScrH()/6.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( hp2, "TheDefaultSettings2", ScrW()/2.5, ScrH()/4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( atk2, "TheDefaultSettings2", ScrW()/2.5, ScrH()/3.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( def2, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.5, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spatk2, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.09, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spdef2, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.79, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spd2, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.57, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( nat2, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.39, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( abil2, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.25, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( item2, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.14, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move12, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.6, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move22, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move32, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.27, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move42, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.15, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.2, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.5, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.45, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.4, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.35, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.31, ScrH()/30, ScrW()/50, ScrH()/50 )
	
		surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.269, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.23, ScrH()/30, ScrW()/50, ScrH()/50 )
end
end)

concommand.Add("statsderma3", function()
DermaFrame3 = vgui.Create( "DFrame" )
DermaFrame3:SetPos( 0, 0)
DermaFrame3:SetSize( ScrW(), ScrH())
DermaFrame3:SetVisible( true )
DermaFrame3:MakePopup()
DermaFrame3:SetTitle("")
DermaFrame3:SetDraggable(false)
DermaFrame3:ShowCloseButton(false)

local icon2 = vgui.Create( "DModelPanel", DermaFrame3 )
icon2:SetSize( 300, 300 )
function icon2:LayoutEntity( Entity ) return end -- disables default rotation
icon2:SetPos(ScrW()/1.5,ScrH()/15)
icon2:SetModel( mdl3 )
icon2:SetCamPos( Vector( 100,0,0) )

InfoPanel = vgui.Create( "DButton", DermaFrame3 ); -- Create the button
	InfoPanel:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/1.5, ScrH()/30 ); -- Set the position of the button
	InfoPanel:SetText( " " ); -- What does the button say (On top)
	InfoPanel.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel:DoClick()
RunConsoleCommand("closestatsderma3")
RunConsoleCommand("statsderma2")
end

InfoPanel2 = vgui.Create( "DButton", DermaFrame3 ); -- Create the button
	InfoPanel2:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/1.2, ScrH()/30 ); -- Set the position of the button
	InfoPanel2:SetText( " " ); -- What does the button say (On top)
	InfoPanel2.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel2:DoClick()
RunConsoleCommand("closestatsderma3")
RunConsoleCommand("statsderma4")
end

InfoPanelll = vgui.Create( "DButton", DermaFrame3 ); -- Create the button
	InfoPanelll:SetSize(  ScrW()/25, ScrH()/20 ); -- Set the size of the button
	InfoPanelll:SetPos( ScrW()/1.1, ScrH()/30 ); -- Set the position of the button
	InfoPanelll:SetText( " " ); -- What does the button say (On top)
	InfoPanelll.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanelll:GetWide(), InfoPanelll:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanelll:DoClick()
RunConsoleCommand("closestatsderma3")
end


DermaFrame3.Paint = function()
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball2	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/90, ScrH()/20, 80, 80 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( gender3 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/3.2, ScrH()/19.5, 70, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ptype3 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.39, ScrH()/2.3, 120, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( cb) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.1, ScrH()/30, ScrW()/25, ScrH()/20 )
	
	draw.DrawText( "Squirtle", "TheDefaultSettings2", ScrW()/5.5, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( lvl3, "TheDefaultSettings2", ScrW()/2.2, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( dexno3, "TheDefaultSettings2", ScrW()/3, ScrH()/6.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( hp3, "TheDefaultSettings2", ScrW()/2.5, ScrH()/4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( atk3, "TheDefaultSettings2", ScrW()/2.5, ScrH()/3.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( def3, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.5, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spatk3, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.09, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spdef3, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.79, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spd3, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.57, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( nat3, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.39, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( abil3, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.25, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( item3, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.14, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move13, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.6, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move23, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move33, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.27, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move43, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.15, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.2, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.5, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.45, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.4, ScrH()/30, ScrW()/50, ScrH()/50 )
	
surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.35, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.31, ScrH()/30, ScrW()/50, ScrH()/50 )
	
		surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.269, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.23, ScrH()/30, ScrW()/50, ScrH()/50 )
end
end)

concommand.Add("statsderma4", function()
DermaFrame4 = vgui.Create( "DFrame" )
DermaFrame4:SetPos( 0, 0)
DermaFrame4:SetSize( ScrW(), ScrH())
DermaFrame4:SetVisible( true )
DermaFrame4:MakePopup()
DermaFrame4:SetTitle("")
DermaFrame4:SetDraggable(false)
DermaFrame4:ShowCloseButton(false)

local icon2 = vgui.Create( "DModelPanel", DermaFrame4)
icon2:SetSize( 300, 300 )
function icon2:LayoutEntity( Entity ) return end -- disables default rotation
icon2:SetPos(ScrW()/1.5,ScrH()/15)
icon2:SetModel( mdl4 )
icon2:SetCamPos( Vector( 100,0,0) )

InfoPanel = vgui.Create( "DButton", DermaFrame4 ); -- Create the button
	InfoPanel:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/1.5, ScrH()/30 ); -- Set the position of the button
	InfoPanel:SetText( " " ); -- What does the button say (On top)
	InfoPanel.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel:DoClick()
RunConsoleCommand("closestatsderma4")
RunConsoleCommand("statsderma3")
end

InfoPanel2 = vgui.Create( "DButton", DermaFrame4 ); -- Create the button
	InfoPanel2:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/1.2, ScrH()/30 ); -- Set the position of the button
	InfoPanel2:SetText( " " ); -- What does the button say (On top)
	InfoPanel2.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel2:DoClick()
RunConsoleCommand("closestatsderma4")
RunConsoleCommand("statsderma5")
end

InfoPanelll = vgui.Create( "DButton", DermaFrame4 ); -- Create the button
	InfoPanelll:SetSize(  ScrW()/25, ScrH()/20 ); -- Set the size of the button
	InfoPanelll:SetPos( ScrW()/1.1, ScrH()/30 ); -- Set the position of the button
	InfoPanelll:SetText( " " ); -- What does the button say (On top)
	InfoPanelll.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanelll:GetWide(), InfoPanelll:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanelll:DoClick()
RunConsoleCommand("closestatsderma4")
end


DermaFrame4.Paint = function()
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball2	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/90, ScrH()/20, 80, 80 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( gender3 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/3.2, ScrH()/19.5, 70, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ptype3 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.39, ScrH()/2.3, 120, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( cb) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.1, ScrH()/30, ScrW()/25, ScrH()/20 )
	
	draw.DrawText( "Charmander", "TheDefaultSettings2", ScrW()/5.5, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( lvl4, "TheDefaultSettings2", ScrW()/2.2, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( dexno4, "TheDefaultSettings2", ScrW()/3, ScrH()/6.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( hp4, "TheDefaultSettings2", ScrW()/2.5, ScrH()/4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( atk4, "TheDefaultSettings2", ScrW()/2.5, ScrH()/3.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( def4, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.5, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spatk4, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.09, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spdef4, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.79, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spd4, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.57, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( nat4, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.39, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( abil4, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.25, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( item4, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.14, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move14, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.6, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move24, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move34, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.27, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move44, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.15, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.2, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.5, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.45, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.4, ScrH()/30, ScrW()/50, ScrH()/50 )
	
surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.35, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.31, ScrH()/30, ScrW()/50, ScrH()/50 )
	
		surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.269, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.23, ScrH()/30, ScrW()/50, ScrH()/50 )
end
end)

concommand.Add("statsderma5", function()
DermaFrame5 = vgui.Create( "DFrame" )
DermaFrame5:SetPos( 0, 0)
DermaFrame5:SetSize( ScrW(), ScrH())
DermaFrame5:SetVisible( true )
DermaFrame5:MakePopup()
DermaFrame5:SetTitle("")
DermaFrame5:SetDraggable(false)
DermaFrame5:ShowCloseButton(false)

local icon2 = vgui.Create( "DModelPanel", DermaFrame5)
icon2:SetSize( 300, 300 )
function icon2:LayoutEntity( Entity ) return end -- disables default rotation
icon2:SetPos(ScrW()/1.5,ScrH()/15)
icon2:SetModel( mdl5 )
icon2:SetCamPos( Vector( 100,0,0) )

InfoPanel = vgui.Create( "DButton", DermaFrame5 ); -- Create the button
	InfoPanel:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/1.5, ScrH()/30 ); -- Set the position of the button
	InfoPanel:SetText( " " ); -- What does the button say (On top)
	InfoPanel.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel:DoClick()
RunConsoleCommand("closestatsderma5")
RunConsoleCommand("statsderma4")
end

InfoPanel2 = vgui.Create( "DButton", DermaFrame5 ); -- Create the button
	InfoPanel2:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/1.2, ScrH()/30 ); -- Set the position of the button
	InfoPanel2:SetText( " " ); -- What does the button say (On top)
	InfoPanel2.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel2:DoClick()
RunConsoleCommand("closestatsderma5")
RunConsoleCommand("statsderma6")
end

InfoPanelll = vgui.Create( "DButton", DermaFrame5 ); -- Create the button
	InfoPanelll:SetSize(  ScrW()/25, ScrH()/20 ); -- Set the size of the button
	InfoPanelll:SetPos( ScrW()/1.1, ScrH()/30 ); -- Set the position of the button
	InfoPanelll:SetText( " " ); -- What does the button say (On top)
	InfoPanelll.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanelll:GetWide(), InfoPanelll:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanelll:DoClick()
RunConsoleCommand("closestatsderma5")
end


DermaFrame5.Paint = function()
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball5	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/90, ScrH()/20, 80, 80 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( gender5 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/3.2, ScrH()/19.5, 70, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ptype5 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.39, ScrH()/2.3, 120, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( cb) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.1, ScrH()/30, ScrW()/25, ScrH()/20 )
	
	draw.DrawText( "Charry", "TheDefaultSettings2", ScrW()/5.5, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( lvl5, "TheDefaultSettings2", ScrW()/2.2, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( dexno5, "TheDefaultSettings2", ScrW()/3, ScrH()/6.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( hp5, "TheDefaultSettings2", ScrW()/2.5, ScrH()/4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( atk5, "TheDefaultSettings2", ScrW()/2.5, ScrH()/3.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( def5, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.5, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spatk5, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.09, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spdef5, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.79, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spd5, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.57, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( nat5, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.39, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( abil5, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.25, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( item5, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.14, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move15, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.6, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move25, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move35, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.27, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move45, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.15, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.2, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.5, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.45, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.4, ScrH()/30, ScrW()/50, ScrH()/50 )
	
surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.35, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.31, ScrH()/30, ScrW()/50, ScrH()/50 )
	
		surface.SetDrawColor( 255, 255, 255, 255)
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.269, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.23, ScrH()/30, ScrW()/50, ScrH()/50 )
end
end)

concommand.Add("statsderma6", function()
DermaFrame6 = vgui.Create( "DFrame" )
DermaFrame6:SetPos( 0, 0)
DermaFrame6:SetSize( ScrW(), ScrH())
DermaFrame6:SetVisible( true )
DermaFrame6:MakePopup()
DermaFrame6:SetTitle("")
DermaFrame6:SetDraggable(false)
DermaFrame6:ShowCloseButton(false)

local icon2 = vgui.Create( "DModelPanel", DermaFrame6)
icon2:SetSize( 300, 300 )
function icon2:LayoutEntity( Entity ) return end -- disables default rotation
icon2:SetPos(ScrW()/1.5,ScrH()/15)
icon2:SetModel( mdl6 )
icon2:SetCamPos( Vector( 100,0,0) )

InfoPanel = vgui.Create( "DButton", DermaFrame6 ); -- Create the button
	InfoPanel:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/1.5, ScrH()/30 ); -- Set the position of the button
	InfoPanel:SetText( " " ); -- What does the button say (On top)
	InfoPanel.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel:DoClick()
RunConsoleCommand("closestatsderma6")
RunConsoleCommand("statsderma5")
end

InfoPanel2 = vgui.Create( "DButton", DermaFrame6 ); -- Create the button
	InfoPanel2:SetSize(  ScrW()/50, ScrH()/50 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/1.2, ScrH()/30 ); -- Set the position of the button
	InfoPanel2:SetText( " " ); -- What does the button say (On top)
	InfoPanel2.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel:GetWide(), InfoPanel:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel2:DoClick()
RunConsoleCommand("closestatsderma6")
RunConsoleCommand("statsderma")
end

InfoPanelll = vgui.Create( "DButton", DermaFrame6 ); -- Create the button
	InfoPanelll:SetSize(  ScrW()/25, ScrH()/20 ); -- Set the size of the button
	InfoPanelll:SetPos( ScrW()/1.1, ScrH()/30 ); -- Set the position of the button
	InfoPanelll:SetText( " " ); -- What does the button say (On top)
	InfoPanelll.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanelll:GetWide(), InfoPanelll:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanelll:DoClick()
RunConsoleCommand("closestatsderma6")
end


DermaFrame6.Paint = function()
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball6	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/90, ScrH()/20, 80, 80 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( gender6 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/3.2, ScrH()/19.5, 70, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ptype5 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.39, ScrH()/2.3, 120, 70 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( cb) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.1, ScrH()/30, ScrW()/25, ScrH()/20 )
	
	draw.DrawText( "Chacha", "TheDefaultSettings2", ScrW()/5.5, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( lvl6, "TheDefaultSettings2", ScrW()/2.2, ScrH()/20, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( dexno6, "TheDefaultSettings2", ScrW()/3, ScrH()/6.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( hp6, "TheDefaultSettings2", ScrW()/2.5, ScrH()/4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( atk6, "TheDefaultSettings2", ScrW()/2.5, ScrH()/3.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( def6, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.5, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spatk6, "TheDefaultSettings2", ScrW()/2.5, ScrH()/2.09, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spdef6, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.79, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( spd6, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.57, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( nat6, "TheDefaultSettings2", ScrW()/2.5, ScrH()/1.39, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( abil6, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.25, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( item6, "TheDefaultSettings2", ScrW()/2.7, ScrH()/1.14, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move16, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.6, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move26, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.4, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move36, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.27, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( move46, "TheDefaultSettings2", ScrW()/1.3, ScrH()/1.15, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.2, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( arrow2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.5, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.45, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball2) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.4, ScrH()/30, ScrW()/50, ScrH()/50 )
	
surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.35, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 155 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.31, ScrH()/30, ScrW()/50, ScrH()/50 )
	
		surface.SetDrawColor( 255, 255, 255, 155)
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.269, ScrH()/30, ScrW()/50, ScrH()/50 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.23, ScrH()/30, ScrW()/50, ScrH()/50 )
end
end)

concommand.Add("closestatsderma", function()
DermaFrame:Close()
end)

concommand.Add("closestatsderma2", function()
DermaFrame2:Close()
end)

concommand.Add("closestatsderma3", function()
DermaFrame3:Close()
end)

concommand.Add("closestatsderma4", function()
DermaFrame4:Close()
end)

concommand.Add("closestatsderma5", function()
DermaFrame5:Close()
end)

concommand.Add("closestatsderma6", function()
DermaFrame6:Close()
end)
pokedexback = Material("materials/vgui/logos/ui/pokedex.png")
local s1 = Material( "materials/vgui/logos/ui/csprite.png")
local s2 = Material( "materials/vgui/logos/ui/ssprite.png")
local s3 = Material( "materials/vgui/logos/ui/bsprite.png")

local sp1 = Material( "materials/vgui/logos/ui/charpdx.png")
local sp2 = Material( "materials/vgui/logos/ui/spkdx.png")
local sp3 = Material( "materials/vgui/logos/ui/bulbpkdx.png")

    surface.CreateFont( "TheDefaultSettings3", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = ScrW()/70,
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

local pball = Material( "materials/vgui/logos/ui/pokeball.png")

concommand.Add("pokedex", function()
pf = vgui.Create( "DFrame" )
pf:SetPos( 0, 0)
pf:SetTitle(" ")
pf:SetSize( ScrW(), ScrH())
pf:SetVisible( true )
pf:MakePopup()
pf:ShowCloseButton(false)
pf:SetDraggable(false)

local DermaPanel = vgui.Create( "DFrame", pf )
DermaPanel:SetPos(0,0 )
DermaPanel:SetSize( ScrW(), ScrH() )
DermaPanel:SetTitle( "" )
DermaPanel:SetDraggable( true )
DermaPanel:MakePopup()
DermaPanel:ShowCloseButton(false)
DermaPanel:SetDraggable(false)

function DermaPanel:Paint( w, h )
	surface.SetDrawColor( 155, 255, 255, 255 )
	surface.DrawRect( ScrW()/4.4, ScrH()/28, ScrW()/1.8, ScrH()/1.077 )

	draw.RoundedBox(6, ScrW()/4.43, ScrH()/28, ScrW()/1.79, ScrH()/30, Color(0,0,0,155) )
	draw.RoundedBox(6, ScrW()/4.43, ScrH()/13, ScrW()/1.79, ScrH()/30, Color(0,0,0,155) )
	draw.RoundedBox(6, ScrW()/4.43, ScrH()/8.5, ScrW()/1.79, ScrH()/30, Color(0,0,0,155) )

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/4.43, ScrH()/28, ScrW()/50, ScrH()/35)

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( s1 ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/2, ScrH()/28, ScrW()/50, ScrH()/35)

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/4.43, ScrH()/13, ScrW()/50, ScrH()/35)

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( s2 ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/2, ScrH()/13, ScrW()/50, ScrH()/35)

	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pball ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/4.43, ScrH()/8.2, ScrW()/50, ScrH()/35)

		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( s3 ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/2, ScrH()/8.2, ScrW()/50, ScrH()/35)

	draw.DrawText( "001     Charmander", "TheDefaultSettings3", ScrW()/3, ScrH()/28, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( "002           Squirtle", "TheDefaultSettings3", ScrW()/3, ScrH()/12, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( "003        Bulbasaur", "TheDefaultSettings3", ScrW()/3, ScrH()/8, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end

function pf:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( pokedexback	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW()/1, ScrH()/1 )
end

InfoPanel2 = vgui.Create( "DButton", DermaPanel ); -- Create the button
	InfoPanel2:SetSize( ScrW()/1.79, ScrH()/30 ); -- Set the size of the button
	InfoPanel2:SetPos(  ScrW()/4.43, ScrH()/8.5 ); -- Set the position of the button
	InfoPanel2:SetText( " " ); -- What does the button say (On top)
	InfoPanel2.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101,0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel2:GetWide(), InfoPanel2:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

function InfoPanel2:DoClick()

end

InfoPanel3 = vgui.Create( "DButton", DermaPanel ); -- Create the button
	InfoPanel3:SetSize( ScrW()/1.79, ScrH()/30 ); -- Set the size of the button
	InfoPanel3:SetPos(  ScrW()/4.43, ScrH()/13 ); -- Set the position of the button
	InfoPanel3:SetText( " " ); -- What does the button say (On top)
	InfoPanel3.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel3:GetWide(), InfoPanel3:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

InfoPanel4 = vgui.Create( "DButton", DermaPanel ); -- Create the button
	InfoPanel4:SetSize( ScrW()/1.79, ScrH()/30 ); -- Set the size of the button
	InfoPanel4:SetPos(  ScrW()/4.43, ScrH()/28 ); -- Set the position of the button
	InfoPanel4:SetText( " " ); -- What does the button say (On top)
	InfoPanel4.Paint = function() -- The paint function
    surface.SetDrawColor( 68, 87, 101, 0 ) -- What color do You want to paint the button (R, B, G, A)
    surface.DrawRect( 0, 0, InfoPanel4:GetWide(), InfoPanel4:GetTall() ) -- Paint what coords (Used a function to figure that out)
end

end)

concommand.Add("closepokedex", function()
pf:Close()
end)

concommand.Add("char", function()
pf2 = vgui.Create( "DFrame" )
pf2:SetPos( 0, 0)
pf2:SetTitle(" ")
pf2:SetSize( ScrW(), ScrH())
pf2:SetVisible( true )
pf2:MakePopup()
pf2:ShowCloseButton(false)
pf2:SetDraggable(false)

function pf2:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( sp1) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW()/1, ScrH()/1 )
end
end)

concommand.Add("squir", function()
pf2 = vgui.Create( "DFrame" )
pf2:SetPos( 0, 0)
pf2:SetTitle(" ")
pf2:SetSize( ScrW(), ScrH())
pf2:SetVisible( true )
pf2:MakePopup()
pf2:ShowCloseButton(false)
pf2:SetDraggable(false)

function pf2:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( sp2) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW()/1, ScrH()/1 )
end
end)

concommand.Add("bbsr", function()
pf2 = vgui.Create( "DFrame" )
pf2:SetPos( 0, 0)
pf2:SetTitle(" ")
pf2:SetSize( ScrW(), ScrH())
pf2:SetVisible( true )
pf2:MakePopup()
pf2:ShowCloseButton(false)
pf2:SetDraggable(false)

function pf2:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( sp3) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW()/1, ScrH()/1 )
end
end)

local ourMat = Material( "materials/vgui/logos/ui/trap.png" ) -- base pallet
local emodel = "models/Barney.mdl" -- enemy pokemon's model
local ename = "Blastoise" -- enemy pokemon's name
local emaxhp = 252 -- enemy max hp
local ecurrenthp = 252 -- enemy current hp
local ehp = ecurrenthp/emaxhp* ScrW()/3.5
local elvl = 43 --enemy level

surface.CreateFont( "Namefont", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = ScrW()/35, 
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
	outline = true,
} )

concommand.Add("battlemenu",function()
hook.Add( "HUDPaint", "example_hook", function()
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/1.8, ScrH()/7 )
	draw.DrawText( ename, "Namefont", ScrW()/2.15, 0, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	draw.DrawText( "Lv "..elvl, "Namefont", ScrW()/1.5, 0, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
	draw.RoundedBox( 4, ScrW()/2.4, ScrH()/15, ScrW()/3.5, ScrH()/40, Color(255, 255, 255, 255 ) )
	
	draw.RoundedBox( 4, ScrW()/2.4, ScrH()/15, ehp, ScrH()/40, Color(50,205,50, 255 ) )
	
	if not IsValid(Panel) then
Panel = vgui.Create( "DPanel" )
Panel:SetPos( ScrW()/3, 0 )
Panel:SetSize( ScrW()/15, ScrH()/10  )

function Panel:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 0, 0, 0, 0 ) )
	
end

local icon = vgui.Create( "DModelPanel", Panel )
icon:SetSize( ScrW()/15, ScrH()/10 )
icon:SetModel( emodel )
--icon:SetCamPos(Vector( 0, 90, 20 ) )	
function icon:LayoutEntity( Entity ) return end 
end
end )

concommand.Add("closep",function()
Panel:Remove()
end)

end)

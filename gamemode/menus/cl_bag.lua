local background = Material( "materials/vgui/logos/ui/untitled.png")

concommand.Add("bagmenu", function()
local DermaFrame = vgui.Create( "DFrame" )
DermaFrame:SetPos( 0, 0 )
DermaFrame:SetSize( ScrW(), ScrH() )
DermaFrame:SetTitle( "Derma Paint" )
DermaFrame:SetVisible( true )
DermaFrame:MakePopup()
DermaFrame.Paint = function()
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( background) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH())
end
end)

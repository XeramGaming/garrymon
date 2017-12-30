local money = Material("materials/vgui/logos/ui/$$$.png")
local protein = Material("materials/vgui/logos/ui/protein.png")

surface.CreateFont( "shopuifont", {
	font = "Arial", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = ScrW()/20,
	weight = 50,
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

concommand.Add("shopderma2", function()

main = vgui.Create( "DFrame" )
main:SetSize( ScrW()/200, ScrH()/100 )
main:SetPos( ScrW()/2,ScrH()/2 )
main:MakePopup()
main:ShowCloseButton(false)
main:SetTitle("")

function main:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/bluebox.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h)
end

local DScrollPanel = vgui.Create( "DScrollPanel", main )
DScrollPanel:Dock( FILL )

local sbar = DScrollPanel:GetVBar()
function sbar:Paint( w, h )
	
end
function sbar.btnUp:Paint( w, h )
	
end
function sbar.btnDown:Paint( w, h )
	
end
function sbar.btnGrip:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 100, 200, 255 ) )
end


	local a1 = DScrollPanel:Add( "DFrame" )
	a1:SetSize( ScrW()/200, ScrH()/10.5 )
	a1:Dock( TOP )
	a1:DockMargin( 0, 0, 0, 10 )
	a1:ShowCloseButton(false)
	a1:SetTitle("")
	a1:SetDraggable( false )
	
		function a1:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Protein            9,800", "shopuifont", ScrW()/5.1 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
	
	a1:SetCursor("hand") 
	
end
	
	a1.OnMousePressed = function()
if IsValid(b2) then
b2:Remove()
end
if IsValid(b3) then
b3:Remove()
end
if IsValid(b4) then
b4:Remove()
end
	
	if not IsValid(b1) then
		b1 = vgui.Create( "DFrame" )
b1:SetSize( ScrW()/4, ScrH()/3 )
b1:SetPos( ScrW()/1.395,ScrH()/3 )
b1:MakePopup()
b1:ShowCloseButton(false)
b1:SetTitle("")
b1:SetDraggable( false )

function b1:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 135, 135, 255 ) )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/prot.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, ScrH()/7.5, ScrW()/4, ScrH()/5 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( protein ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/90, ScrH()/7, ScrW()/60, ScrH()/22 )
end

	
InfoPanel = vgui.Create( "DButton", b1 ); -- Create the button
	InfoPanel:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/200, ScrH()/100 ); -- Set the position of the button
	InfoPanel:SetText("")

	function InfoPanel:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

InfoPanel2 = vgui.Create( "DButton", b1 ); -- Create the button
	InfoPanel2:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/7.5, ScrH()/100 ); -- Set the position of the button
	InfoPanel2:SetText("")

	function InfoPanel2:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download2.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

end
end

	local a2 = DScrollPanel:Add( "DFrame" )
	a2:SetSize( ScrW()/200, ScrH()/10.5 )
	a2:Dock( TOP )
	a2:DockMargin( 0, 0, 0, 10 )
	a2:ShowCloseButton(false)
	a2:SetTitle("")
	a2:SetDraggable( false )

	function a2:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Pokeball         100", "shopuifont", ScrW()/5.75 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
	
	a2:SetCursor("hand") 
end
	
		a2.OnMousePressed = function()
		if IsValid(b1) then
b1:Remove()
end
if IsValid(b3) then
b3:Remove()
end
if IsValid(b4) then
b4:Remove()
end
	if not IsValid(b2) then
		b2 = vgui.Create( "DFrame" )
b2:SetSize( ScrW()/4, ScrH()/3 )
b2:SetPos( ScrW()/1.395,ScrH()/3 )
b2:MakePopup()
b2:ShowCloseButton(false)
b2:SetTitle("")
b2:SetDraggable( false )

function b2:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 135, 135, 255 ) )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/pokb.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, ScrH()/7.5, ScrW()/4, ScrH()/5 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/pokeball2.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/90, ScrH()/7, ScrW()/30, ScrH()/22 )
end

	
InfoPanel = vgui.Create( "DButton", b2 ); -- Create the button
	InfoPanel:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/200, ScrH()/100 ); -- Set the position of the button
	InfoPanel:SetText("")

	function InfoPanel:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

InfoPanel2 = vgui.Create( "DButton", b2 ); -- Create the button
	InfoPanel2:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/7.5, ScrH()/100 ); -- Set the position of the button
	InfoPanel2:SetText("")

	function InfoPanel2:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download2.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

end
end
	
		local a3 = DScrollPanel:Add( "DFrame" )
	a3:SetSize( ScrW()/200, ScrH()/10.5 )
	a3:Dock( TOP )
	a3:DockMargin( 0, 0, 0, 10 )
	a3:ShowCloseButton(false)
	a3:SetTitle("")
	a3:SetDraggable( false )

	function a3:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Potion             500", "shopuifont", ScrW()/5.65 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
	a3:SetCursor("hand")
end

		a3.OnMousePressed = function()
	if not IsValid(b3) then
	if IsValid(b1) then
b1:Remove()
end
if IsValid(b2) then
b2:Remove()
end
if IsValid(b4) then
b4:Remove()
end
		b3 = vgui.Create( "DFrame" )
b3:SetSize( ScrW()/4, ScrH()/3 )
b3:SetPos( ScrW()/1.395,ScrH()/3 )
b3:MakePopup()
b3:ShowCloseButton(false)
b3:SetTitle("")
b3:SetDraggable( false )

function b3:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 135, 135, 255 ) )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/potb.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, ScrH()/7.5, ScrW()/4, ScrH()/5 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/potion.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/90, ScrH()/7.5, ScrW()/30, ScrH()/15 )
end

	
InfoPanel = vgui.Create( "DButton", b3 ); -- Create the button
	InfoPanel:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/200, ScrH()/100 ); -- Set the position of the button
	InfoPanel:SetText("")

	function InfoPanel:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

InfoPanel2 = vgui.Create( "DButton", b3 ); -- Create the button
	InfoPanel2:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/7.5, ScrH()/100 ); -- Set the position of the button
	InfoPanel2:SetText("")

	function InfoPanel2:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download2.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

end
end

			local a4 = DScrollPanel:Add( "DFrame" )
	a4:SetSize( ScrW()/200, ScrH()/10.5 )
	a4:Dock( TOP )
	a4:DockMargin( 0, 0, 0, 10 )
	a4:ShowCloseButton(false)
	a4:SetTitle("")
	a4:SetDraggable( false )

	function a4:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "TM17              3,000", "shopuifont", ScrW()/5.1 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
	a4:SetCursor("hand")
end

		a4.OnMousePressed = function()
	if not IsValid(b4) then
	
	if IsValid(b1) then
b1:Remove()
end
if IsValid(b2) then
b2:Remove()
end
if IsValid(b3) then
b3:Remove()
end

		b4 = vgui.Create( "DFrame" )
b4:SetSize( ScrW()/4, ScrH()/3 )
b4:SetPos( ScrW()/1.395,ScrH()/3 )
b4:MakePopup()
b4:ShowCloseButton(false)
b4:SetTitle("")
b4:SetDraggable( false )

function b4:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 135, 135, 255 ) )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/protb.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, ScrH()/7.5, ScrW()/4, ScrH()/5 )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/tm.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect(ScrW()/90, ScrH()/7.5, ScrW()/30, ScrH()/15 )
end

	
InfoPanel = vgui.Create( "DButton", b4 ); -- Create the button
	InfoPanel:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel:SetPos( ScrW()/200, ScrH()/100 ); -- Set the position of the button
	InfoPanel:SetText("")

	function InfoPanel:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

InfoPanel2 = vgui.Create( "DButton", b4 ); -- Create the button
	InfoPanel2:SetSize( ScrW()/9, ScrH()/10 ); -- Set the size of the button
	InfoPanel2:SetPos( ScrW()/7.5, ScrH()/100 ); -- Set the position of the button
	InfoPanel2:SetText("")

	function InfoPanel2:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/download2.png") ) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, w, h )
end

end
end

			local a5 = DScrollPanel:Add( "DFrame" )
	a5:SetSize( ScrW()/200, ScrH()/10.5 )
	a5:Dock( TOP )
	a5:DockMargin( 0, 0, 0, 10 )
	a5:ShowCloseButton(false)
	a5:SetTitle("")
    a5:SetDraggable( false )
	
	function a5:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Soft Sand       1,000", "shopuifont", ScrW()/5.1 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
end
	
				local a6 = DScrollPanel:Add( "DFrame" )
	a6:SetSize( ScrW()/200, ScrH()/10.5 )
	a6:Dock( TOP )
	a6:DockMargin( 0, 0, 0, 10 )
	a6:ShowCloseButton(false)
	a6:SetTitle("")
    a6:SetDraggable( false )
	
	function a6:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Repel              350", "shopuifont", ScrW()/5.6 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
end
	
					local a7 = DScrollPanel:Add( "DFrame" )
	a7:SetSize( ScrW()/200, ScrH()/10.5 )
	a7:Dock( TOP )
	a7:DockMargin( 0, 0, 0, 10 )
	a7:ShowCloseButton(false)
	a7:SetTitle("")
    a7:SetDraggable( false )
	
	function a7:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Master Ball   10,000", "shopuifont", ScrW()/5.1 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4.4, 0, ScrW()/25, ScrH()/12 )
end
	
						local a8 = DScrollPanel:Add( "DFrame" )
	a8:SetSize( ScrW()/200, ScrH()/10.5 )
	a8:Dock( TOP )
	a8:DockMargin( 0, 0, 0, 10 )
	a8:ShowCloseButton(false)
	a8:SetTitle("")
    a8:SetDraggable( false ) 
 
	function a8:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Revive            1,500", "shopuifont", ScrW()/5.1 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
end

						local a9 = DScrollPanel:Add( "DFrame" )
	a9:SetSize( ScrW()/200, ScrH()/10.5 )
	a9:Dock( TOP )
	a9:DockMargin( 0, 0, 0, 10 )
	a9:ShowCloseButton(false)
	a9:SetTitle("")
    a9:SetDraggable( false )  
	
	function a9:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Elixir               1,000", "shopuifont", ScrW()/5.1 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( money	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/4, 0, ScrW()/25, ScrH()/12 )
end

						local a10 = DScrollPanel:Add( "DFrame" )
	a10:SetSize( ScrW()/200, ScrH()/10.5 )
	a10:Dock( TOP )
	a10:DockMargin( 0, 0, 0, 10 )
	a10:ShowCloseButton(false)
	a10:SetTitle("")
    a10:SetDraggable( false )
	
	function a10:Paint( w, h )
	draw.RoundedBox( 8, 0, 0, w, h, Color( 155, 155, 255  ) )
	draw.DrawText( "Quit", "shopuifont", ScrW()/5.1 ,0, Color(0, 0, 0 ), TEXT_ALIGN_CENTER )
	a10:SetCursor("hand")
end

		a10.OnMousePressed = function()
RunConsoleCommand("closeshopderma2")

end

		
	
DPanel = vgui.Create( "DPanel",main )
DPanel:SetPos( 0,0 ) -- Set the position of the panel
DPanel:SetSize( ScrW(), ScrH() ) -- Set the size of the panel
DPanel:SetBackgroundColor( Color(0,0,0) )
DPanel:AlphaTo(0, .8, 0, function() DPanel:Remove() end)

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end
	
local anim = Derma_Anim( "EaseInQuad", main, function( pnl, anim, delta, data )
    pnl:SetPos( inQuad( delta, ScrW()/2, -ScrW()/5.3 ), inQuad( delta, ScrH()/2, -ScrH()/2.2 ) )
	pnl:SetSize( inQuad( delta, ScrW()/200, ScrW()/2.5 ), inQuad( delta, ScrH()/100, ScrH()/1.1 ) )
end )
anim:Start( .3 ) -- Animate for two seconds
main.Think = function( self )
	if anim:Active() then
		anim:Run()
		
	end 
	end

end)

concommand.Add("closeshopderma2", function()
main:Remove()
DPanel:Remove()
if IsValid(b1) then
b1:Remove()
end
if IsValid(b2) then
b2:Remove()
end
if IsValid(b3) then
b3:Remove()
end
if IsValid(b4) then
b4:Remove()
end
end) 
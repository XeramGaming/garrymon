local mymat = Material( "materials/vgui/logos/ui/3854.png" ) --main background stuff
local mymat3 = Material( "materials/vgui/logos/ui/pokeball2.png" )
local mymat6 = Material ("materials/vgui/logos/ui/Screenshot_2.png")
local mymat7 = Material ("materials/vgui/logos/ui/Screenshot_3.png")
p1hpbar = Material("materials/vgui/logos/ui/hpbar.png")
local c1 = Material ("materials/vgui/logos/ui/sellect.png")
redbox = Material ("materials/vgui/logos/ui/redbox.png")
invi = Material ("materials/vgui/logos/ui/asfalt-light.png")

local mymat2 = Material( "materials/vgui/logos/ui/bsprite.png" ) --1st pokemon
pokemon1g = Material ("materials/vgui/logos/ui/symbols-005.png") -- gender of 1st pokemon, used for all for convenience

local mymat4 = Material( "materials/vgui/logos/ui/ssprite.png" ) --2nd pokemon

local mymat5 = Material( "materials/vgui/logos/ui/csprite.png" ) -- 3rd pokemon



surface.CreateFont( "TheDefaultSettings5", {
	font = "Ariel",
	extended = false,
	size = ScrW() / 40,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = true,
	additive = false,
	outline = false,
} )

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local function CreateFrame()
	myframe = vgui.Create( "DPanel" )
	myframe:SetSize( ScrW(), ScrH() )
	myframe:SetPos( 0, 0 )

	local pokemon = vgui.Create( "DFrame", myframe )
	pokemon:SetPos( 0, 0)
	pokemon:SetSize( ScrW(), ScrH() / 8 )
	pokemon:SetTitle("")
	pokemon:ShowCloseButton(false)
	pokemon:SetDraggable( false )

	function pokemon:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( mymat6 ) -- If you use Material, cache it!
		surface.DrawTexturedRect(0, 0, ScrW(), ScrH() / 8)
	end

	local pokeball = vgui.Create( "DFrame", myframe )
	pokeball:SetPos( ScrW() / 15, ScrH() / 1.6)
	pokeball:SetSize( ScrW() / 4, ScrH() / 4)
	pokeball:SetTitle("")
	pokeball:ShowCloseButton(false)
	pokeball:SetDraggable( false )

	function pokeball:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( mymat7 ) -- If you use Material, cache it!
		surface.DrawTexturedRect(0, 0, ScrW() / 4, ScrH() / 4)
	end

	local DermaPanel = vgui.Create( "DFrame", myframe )
	DermaPanel:SetPos( ScrW() / 60, ScrH() / 4.5 )
	DermaPanel:SetSize( ScrW() / 3, ScrH() / 3 )
	DermaPanel:SetTitle("")
	DermaPanel:ShowCloseButton(false)
	DermaPanel:SetDraggable( false )

	local genderp1 = vgui.Create( "DFrame", myframe ) -- first pokemon's gender
	genderp1:SetPos( ScrW() / 3.4, ScrH() / 2.57 )
	genderp1:SetSize( ScrW() / 40, ScrH() / 30 )
	genderp1:SetTitle("")
	genderp1:ShowCloseButton(false)
	genderp1:SetDraggable( false )

	function genderp1:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( pokemon1g ) -- If you use Material, cache it!
		surface.DrawTexturedRect( 0, 0, ScrW() / 40, ScrH() / 30 )
	end

	local genderp2 = vgui.Create( "DFrame", myframe )
	genderp2:SetPos( ScrW() / 1.2, ScrH() / 5.3 )
	genderp2:SetSize( ScrW() / 40, ScrH() / 30 )
	genderp2:SetTitle("")
	genderp2:ShowCloseButton(false)
	genderp2:SetDraggable( false )

	function genderp2:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( pokemon1g ) -- If you use Material, cache it!
		surface.DrawTexturedRect( 0, 0, ScrW() / 40, ScrH() / 30 )
	end

	local genderp3 = vgui.Create( "DFrame", myframe )
	genderp3:SetPos( ScrW() / 1.2, ScrH() / 2.65 )
	genderp3:SetSize( ScrW() / 40, ScrH() / 30 )
	genderp3:SetTitle("")
	genderp3:ShowCloseButton(false)
	genderp3:SetDraggable( false )

	function genderp3:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( pokemon1g ) -- If you use Material, cache it!
		surface.DrawTexturedRect( 0, 0, ScrW() / 40, ScrH() / 30 )
	end

	local genderp4 = vgui.Create( "DFrame", myframe )
	genderp4:SetPos( ScrW() / 1.2, ScrH() / 1.78 )
	genderp4:SetSize( ScrW() / 40, ScrH() / 30 )
	genderp4:SetTitle("")
	genderp4:ShowCloseButton(false)
	genderp4:SetDraggable( false )

	function genderp4:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( pokemon1g ) -- If you use Material, cache it!
		surface.DrawTexturedRect( 0, 0, ScrW() / 40, ScrH() / 30 )
	end

	local genderp5 = vgui.Create( "DFrame", myframe )
	genderp5:SetPos( ScrW() / 1.2, ScrH() / 1.35 )
	genderp5:SetSize( ScrW() / 40, ScrH() / 30 )
	genderp5:SetTitle("")
	genderp5:ShowCloseButton(false)
	genderp5:SetDraggable( false )

	function genderp5:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( pokemon1g ) -- If you use Material, cache it!
		surface.DrawTexturedRect( 0, 0, ScrW() / 40, ScrH() / 30 )
	end

	local genderp6 = vgui.Create( "DFrame", myframe )
	genderp6:SetPos( ScrW() / 1.2, ScrH() / 1.083 )
	genderp6:SetSize( ScrW() / 40, ScrH() / 30 )
	genderp6:SetTitle("")
	genderp6:ShowCloseButton(false)
	genderp6:SetDraggable( false )

	function genderp6:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( pokemon1g ) -- If you use Material, cache it!
		surface.DrawTexturedRect( 0, 0, ScrW() / 40, ScrH() / 30 )
	end


	local DermaPanel4 = vgui.Create( "DFrame", myframe )
	DermaPanel4:SetPos( ScrW() / 2.5, ScrH() / 12 )
	DermaPanel4:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
	DermaPanel4:SetTitle("")
	DermaPanel4:ShowCloseButton(false)
	DermaPanel4:SetDraggable( false )

	function DermaPanel4:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( mymat4 ) -- If you use Material, cache it!
		surface.DrawTexturedRect( ScrW() / 50, ScrH() / 25, ScrW() / 20, ScrH() / 16)

	end

	local DermaPanel5 = vgui.Create( "DFrame", myframe )
	DermaPanel5:SetPos( ScrW() / 2.5, ScrH() / 3.7 )
	DermaPanel5:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
	DermaPanel5:SetTitle("")
	DermaPanel5:ShowCloseButton(false)
	DermaPanel5:SetDraggable( false )

	local DermaPaneld = vgui.Create( "DFrame", myframe )
	DermaPaneld:SetPos( ScrW() / 2.5, ScrH() / 2.2 )
	DermaPaneld:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
	DermaPaneld:SetTitle("")
	DermaPaneld:ShowCloseButton(false)
	DermaPaneld:SetDraggable( false )

	function DermaPaneld:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
		surface.SetMaterial( mymat5 ) -- If you use Material, cache it!
		surface.DrawTexturedRect( ScrW() / 50, ScrH() / 25, ScrW() / 20, ScrH() / 16)

	end

	DermaPaneld.OnCursorEntered = function()
		DermaPanel6d = vgui.Create( "DFrame", myframe )
		DermaPanel6d:SetPos(ScrW() / 2.5, ScrH() / 2.2 )
		DermaPanel6d:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
		DermaPanel6d:ShowCloseButton(false)
		DermaPanel6d:SetTitle("")
		DermaPanel6d:SetDraggable( false )

		function DermaPanel6d:Paint( w, h )
			draw.RoundedBox( 2, 0, 0, ScrW() / 1.7, ScrH() / 6.4, Color(255, 255, 255, 10) )
			DermaPanel6d:SetCursor("hand")
		end

		function DermaPanel6d:OnMousePressed( keyCode )
			RunConsoleCommand("createchoice1")
		end


		timer.Create( "143oqihfsa", 1 / 2, 0, function()
			if IsValid(DermaPanel) then
			anim = Derma_Anim( "EaseInQuad", DermaPaneld, function( pnl, anim, delta, data )
				pnl:SetPos( ScrW() / 2.5, inQuad( delta, ScrH() / 2.2, 2) )
			end )
			anim:Start( .1 ) -- Animate for two seconds
			DermaPanel.Think = function( self )
				if anim:Active() then
					anim:Run()
				end
			end
		end
	end)
end

local DermaPanele = vgui.Create( "DFrame", myframe )
DermaPanele:SetPos( ScrW() / 2.5, ScrH() / 1.57 )
DermaPanele:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
DermaPanele:SetTitle("")
DermaPanele:ShowCloseButton(false)
DermaPanele:SetDraggable( false )

function DermaPanele:Paint( w, h )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( mymat5 ) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW() / 50, ScrH() / 25, ScrW() / 20, ScrH() / 16)

end

DermaPanele.OnCursorEntered = function()
	DermaPanel6e = vgui.Create( "DFrame", myframe )
	DermaPanel6e:SetPos(ScrW() / 2.5, ScrH() / 1.57 )
	DermaPanel6e:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
	DermaPanel6e:ShowCloseButton(false)
	DermaPanel6e:SetTitle("")
	DermaPanel6e:SetDraggable( false )

	function DermaPanel6e:Paint( w, h )
		draw.RoundedBox( 2, 0, 0, ScrW() / 1.7, ScrH() / 6.4, Color(255, 255, 255, 10) )
		DermaPanel6e:SetCursor("hand")
	end

	function DermaPanel6e:OnMousePressed( keyCode )
		RunConsoleCommand("createchoice5")
	end

	timer.Create( "143oqihfsa", 1 / 2, 0, function()
		if IsValid(DermaPanel) then
		anim = Derma_Anim( "EaseInQuad", DermaPanele, function( pnl, anim, delta, data )
			pnl:SetPos( ScrW() / 2.5, inQuad( delta, ScrH() / 1.57, 2) )
		end )
		anim:Start( .1 ) -- Animate for two seconds
		DermaPanel.Think = function( self )
			if anim:Active() then
				anim:Run()
			end
		end
	end
end)
end

local DermaPanelf = vgui.Create( "DFrame", myframe )
DermaPanelf:SetPos( ScrW() / 2.5, ScrH() / 1.215 )
DermaPanelf:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
DermaPanelf:SetTitle("")
DermaPanelf:ShowCloseButton(false)
DermaPanelf:SetDraggable( false )

function DermaPanelf:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( mymat5 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 50, ScrH() / 25, ScrW() / 20, ScrH() / 16)
end

DermaPanelf.OnCursorEntered = function()
DermaPanel6f = vgui.Create( "DFrame", myframe )
DermaPanel6f:SetPos(ScrW() / 2.5, ScrH() / 1.215 )
DermaPanel6f:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
DermaPanel6f:ShowCloseButton(false)
DermaPanel6f:SetTitle("")
DermaPanel6f:SetDraggable( false )

function DermaPanel6f:Paint( w, h )
	draw.RoundedBox( 2, 0, 0, ScrW() / 1.7, ScrH() / 6.4, Color(255, 255, 255, 10) )
	DermaPanel6f:SetCursor("hand")
end

function DermaPanel6f:OnMousePressed( keyCode )
	RunConsoleCommand("createchoice6")
end

timer.Create( "143oqihfsa", 1 / 2, 0, function()
	if IsValid(DermaPanel) then
	anim = Derma_Anim( "EaseInQuad", DermaPanelf, function( pnl, anim, delta, data )
		pnl:SetPos( ScrW() / 2.5, inQuad( delta, ScrH() / 1.215, 2) )
	end )
	anim:Start( .1 ) -- Animate for two seconds
	DermaPanel.Think = function( self )
		if anim:Active() then
			anim:Run()
		end
	end
end
end)
end

function DermaPanel5:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( mymat5 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 50, ScrH() / 25, ScrW() / 20, ScrH() / 16)

end

function myframe:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( mymat ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW(), ScrH() )

surface.SetDrawColor( 200, 200, 200, 255 )
surface.SetMaterial( mymat3 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 24, ScrH() / 4, ScrW() / 15, ScrH() / 14 )

surface.SetDrawColor( 200, 200, 200, 255 )
surface.SetMaterial( mymat3 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 2.45, ScrH() / 8, ScrW() / 15, ScrH() / 14 )

surface.SetDrawColor( 200, 200, 200, 255 )
surface.SetMaterial( mymat3 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 2.45, ScrH() / 3.25, ScrW() / 15, ScrH() / 14 )

surface.SetDrawColor( 200, 200, 200, 255 )
surface.SetMaterial( mymat3 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 2.45, ScrH() / 2.04, ScrW() / 15, ScrH() / 14 )

surface.SetDrawColor( 200, 200, 200, 255 )
surface.SetMaterial( mymat3 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 2.45, ScrH() / 1.49, ScrW() / 15, ScrH() / 14 )

surface.SetDrawColor( 200, 200, 200, 255 )
surface.SetMaterial( mymat3 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 2.45, ScrH() / 1.165, ScrW() / 15, ScrH() / 14 )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 6.5, ScrH() / 3)
surface.DrawText( "Bulbasaur" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2.05, ScrH() / 8 )
surface.DrawText( "Squirtle" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2.1, ScrH() / 3.25 )
surface.DrawText( "Charmander" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2.1, ScrH() / 2.04 )
surface.DrawText( "Charmander" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2, ScrH() / 1.88 )
surface.DrawText( "Lv13" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2.1, ScrH() / 1.49 )
surface.DrawText( "Charmander" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2, ScrH() / 1.4 )
surface.DrawText( "Lv15" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2.1, ScrH() / 1.17 )
surface.DrawText( "Charmander" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2, ScrH() / 1.11 )
surface.DrawText( "Lv7" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2, ScrH() / 6 )
surface.DrawText( "Lv10" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 6, ScrH() / 2.6)
surface.DrawText( "Lv10" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 2, ScrH() / 2.85)
surface.DrawText( "Lv10" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 4, ScrH() / 2)
surface.DrawText( "45/45" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 1.15, ScrH() / 5.5)
surface.DrawText( "55/55" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 1.15, ScrH() / 2.7)
surface.DrawText( "50/50" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 1.15, ScrH() / 1.8)
surface.DrawText( "62/62" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 1.15, ScrH() / 1.36)
surface.DrawText( "77/77" )

surface.SetFont( "TheDefaultSettings5" )
surface.SetTextColor( 255, 255, 255, 255 )
surface.SetTextPos( ScrW() / 1.15, ScrH() / 1.09)
surface.DrawText( "30/30" )

surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( p1hpbar) -- If you use Material, cache it!
surface.DrawTexturedRect(ScrW() / 36, ScrH() / 3, ScrW() / 3.15, ScrH() / 4.2 )

surface.SetDrawColor( 0, 255, 0, 255 )
surface.DrawRect( ScrW() / 8, ScrH() / 2.305, ScrW() / 5, ScrH() / 32 )

surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( p1hpbar) -- If you use Material, cache it!
surface.DrawTexturedRect(ScrW() / 1.8, ScrH() / 29, ScrW() / 2.5, ScrH() / 4.2 )

surface.SetDrawColor( 0, 255, 0, 255 )
surface.DrawRect(ScrW() / 1.475, ScrH() / 7.55, ScrW() / 3.95, ScrH() / 30 )

surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( p1hpbar) -- If you use Material, cache it!
surface.DrawTexturedRect(ScrW() / 1.8, ScrH() / 4.68, ScrW() / 2.5, ScrH() / 4.2 )

surface.SetDrawColor( 0, 255, 0, 255 )
surface.DrawRect(ScrW() / 1.475, ScrH() / 3.2, ScrW() / 3.95, ScrH() / 30 )

surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( p1hpbar) -- If you use Material, cache it!
surface.DrawTexturedRect(ScrW() / 1.8, ScrH() / 2.5, ScrW() / 2.5, ScrH() / 4.2 )

surface.SetDrawColor( 0, 255, 0, 255 )
surface.DrawRect(ScrW() / 1.475, ScrH() / 2.005, ScrW() / 3.95, ScrH() / 30 )

surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( p1hpbar) -- If you use Material, cache it!
surface.DrawTexturedRect(ScrW() / 1.8, ScrH() / 1.72, ScrW() / 2.5, ScrH() / 4.2 )

surface.SetDrawColor( 0, 255, 0, 255 )
surface.DrawRect(ScrW() / 1.475, ScrH() / 1.47, ScrW() / 3.95, ScrH() / 30 )

surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( p1hpbar) -- If you use Material, cache it!
surface.DrawTexturedRect(ScrW() / 1.8, ScrH() / 1.31, ScrW() / 2.5, ScrH() / 4.2 )

surface.SetDrawColor( 0, 255, 0, 255 )
surface.DrawRect(ScrW() / 1.475, ScrH() / 1.16, ScrW() / 3.95, ScrH() / 30 )

end

function DermaPanel:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( mymat2 ) -- If you use Material, cache it!
surface.DrawTexturedRect( ScrW() / 50, 0, ScrW() / 15, ScrH() / 10)
end


DermaPanel4.OnCursorEntered = function()
DermaPanel6 = vgui.Create( "DFrame", myframe )
DermaPanel6:SetPos(ScrW() / 2.5, ScrH() / 12 )
DermaPanel6:SetSize( ScrW() / 1.7, ScrH() / 6.3 )
DermaPanel6:ShowCloseButton(false)
DermaPanel6:SetTitle("")
DermaPanel6:SetDraggable( false )

function DermaPanel6:Paint( w, h )
draw.RoundedBox( 2, 0, 0, ScrW() / 1.7, ScrH() / 6.4, Color(255, 255, 255, 10) )
DermaPanel6:SetCursor("hand")
end

function DermaPanel6:OnMousePressed( keyCode )
RunConsoleCommand("createchoice3")
end

timer.Create( "143oqihfsa", 1 / 2, 0, function()
if IsValid(DermaPanel) then
anim = Derma_Anim( "EaseInQuad", DermaPanel4, function( pnl, anim, delta, data )
	pnl:SetPos( ScrW() / 2.5, inQuad( delta, ScrH() / 12.4, 2) )
end )
anim:Start( .1 ) -- Animate for two seconds
DermaPanel.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end
end
end)
end

DermaPanel5.OnCursorEntered = function()
DermaPanel7 = vgui.Create( "DFrame", myframe )
DermaPanel7:SetPos(ScrW() / 2.5, ScrH() / 3.7 )
DermaPanel7:SetSize( ScrW() / 1.7, ScrH() / 6 )
DermaPanel7:ShowCloseButton(false)
DermaPanel7:SetTitle("")
DermaPanel7:SetDraggable( false )

function DermaPanel7:Paint( w, h )
draw.RoundedBox( 2, 0, 0, ScrW() / 1.7, ScrH() / 6.4, Color(255, 255, 255, 10) )
DermaPanel7:SetCursor("hand")
end

function DermaPanel7:OnMousePressed( keyCode )
RunConsoleCommand("createchoice4")
end

timer.Create( "143oqihfsa", 1 / 2, 0, function()
if IsValid(DermaPanel) then
anim = Derma_Anim( "EaseInQuad", DermaPanel5, function( pnl, anim, delta, data )
pnl:SetPos( ScrW() / 2.5, inQuad( delta, ScrH() / 3.7, 2) )
end )
anim:Start( .1 ) -- Animate for two seconds
DermaPanel.Think = function( self )
if anim:Active() then
	anim:Run()
end
end
end
end)
end

DermaPanel.OnCursorEntered = function()
DermaPanel2 = vgui.Create( "DFrame", myframe )
DermaPanel2:SetPos( ScrW() / 22, ScrH() / 4.5 )
DermaPanel2:SetSize( ScrW() / 3.25, ScrH() / 3 )
DermaPanel2:ShowCloseButton(false)
DermaPanel2:SetTitle("")
DermaPanel2:SetDraggable( false )

function DermaPanel2:Paint( w, h )
draw.RoundedBox( 2, 0, 0, ScrW(), ScrH(), Color(255, 255, 255, 10) )
DermaPanel2:SetCursor("hand")
end

function DermaPanel2:OnMousePressed( keyCode )
RunConsoleCommand("createchoice2")
end

timer.Create( "143oqihfsa", 1 / 2, 0, function()
if IsValid(DermaPanel) then
anim = Derma_Anim( "EaseInQuad", DermaPanel, function( pnl, anim, delta, data )
pnl:SetPos( ScrW() / 60, inQuad( delta, ScrH() / 4.5, 2) )
end )
anim:Start( .1 ) -- Animate for two seconds
DermaPanel.Think = function( self )
if anim:Active() then
anim:Run()
end
end
end
end)
end
DermaPanel.OnCursorExited = function()
DermaPanel2.OnCursorExited = function()
DermaPanel2:Remove()
end
end


DermaPanel4.OnCursorExited = function()
DermaPanel6.OnCursorExited = function()
DermaPanel6:Remove()
end
end

DermaPanel5.OnCursorExited = function()
DermaPanel7.OnCursorExited = function()
DermaPanel7:Remove()
end
end

DermaPaneld.OnCursorExited = function()
DermaPanel6d.OnCursorExited = function()
DermaPanel6d:Remove()
end
end

DermaPanele.OnCursorExited = function()
DermaPanel6e.OnCursorExited = function()
DermaPanel6e:Remove()
end
end

DermaPanelf.OnCursorExited = function()
DermaPanel6f.OnCursorExited = function()
DermaPanel6f:Remove()
end
end

concommand.Add("createchoice1", function() -- 4th pokemon
if not IsValid(Frame) then
surface.PlaySound( "Sample 8.wav" )

Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, ScrH() / 1.7 )
Frame:SetSize( ScrW() / 2.8, ScrH() / 2.4 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( false )
Frame:ShowCloseButton( false )

function Frame:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( c1 ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 2.8, ScrH() / 2.4)
end
end


Framea = vgui.Create( "DFrame", Frame )---------------------------1
Framea:SetPos(ScrW() / 40, ScrH() / 3.4 )
Framea:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framea:SetTitle( "" )
Framea:SetVisible( true )
Framea:SetDraggable( false )
Framea:ShowCloseButton( false )

function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framea.OnCursorEntered = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framea:OnMousePressed( keyCode )
RunConsoleCommand("closechoice1")
end

Framea.OnCursorExited = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end

end

concommand.Add("closechoice1", function()
Frame:Remove()
end)

Frameb = vgui.Create( "DFrame", Frame )---------------------------2
Frameb:SetPos(ScrW() / 40, ScrH() / 4.8)
Frameb:SetSize( ScrW() / 3.5, ScrH() / 12 )
Frameb:SetTitle( "" )
Frameb:SetVisible( true )
Frameb:SetDraggable( false )
Frameb:ShowCloseButton( false )

function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Frameb.OnCursorEntered = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Frameb:OnMousePressed( keyCode )

end

Frameb.OnCursorExited = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framec = vgui.Create( "DFrame", Frame )---------------------------
Framec:SetPos(ScrW() / 40, ScrH() / 8)
Framec:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framec:SetTitle( "" )
Framec:SetVisible( true )
Framec:SetDraggable( false )
Framec:ShowCloseButton( false )

function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framec.OnCursorEntered = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framec:OnMousePressed( keyCode )

end

Framec.OnCursorExited = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framed = vgui.Create( "DFrame", Frame )---------------------------4
Framed:SetPos(ScrW() / 40, ScrH() / 25)
Framed:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framed:SetTitle( "" )
Framed:SetVisible( true )
Framed:SetDraggable( false )
Framed:ShowCloseButton( false )

function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framed.OnCursorEntered = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framed:OnMousePressed( keyCode )

end

Framed.OnCursorExited = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

end)-------------eof

concommand.Add("createchoice1", function() -- 4th pokemon
if not IsValid(Frame) then
surface.PlaySound( "Sample 8.wav" )

Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, ScrH() / 1.7 )
Frame:SetSize( ScrW() / 2.8, ScrH() / 2.4 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( false )
Frame:ShowCloseButton( false )

function Frame:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( c1 ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 2.8, ScrH() / 2.4)
end
end


Framea = vgui.Create( "DFrame", Frame )---------------------------1
Framea:SetPos(ScrW() / 40, ScrH() / 3.4 )
Framea:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framea:SetTitle( "" )
Framea:SetVisible( true )
Framea:SetDraggable( false )
Framea:ShowCloseButton( false )

function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framea.OnCursorEntered = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framea:OnMousePressed( keyCode )
RunConsoleCommand("closechoice1")
end

Framea.OnCursorExited = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end

end

concommand.Add("closechoice1", function()
Frame:Remove()
end)

Frameb = vgui.Create( "DFrame", Frame )---------------------------2
Frameb:SetPos(ScrW() / 40, ScrH() / 4.8)
Frameb:SetSize( ScrW() / 3.5, ScrH() / 12 )
Frameb:SetTitle( "" )
Frameb:SetVisible( true )
Frameb:SetDraggable( false )
Frameb:ShowCloseButton( false )

function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Frameb.OnCursorEntered = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Frameb:OnMousePressed( keyCode )
RunConsoleCommand("bagmenu")
end

Frameb.OnCursorExited = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framec = vgui.Create( "DFrame", Frame )---------------------------
Framec:SetPos(ScrW() / 40, ScrH() / 8)
Framec:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framec:SetTitle( "" )
Framec:SetVisible( true )
Framec:SetDraggable( false )
Framec:ShowCloseButton( false )

function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framec.OnCursorEntered = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framec:OnMousePressed( keyCode )

end

Framec.OnCursorExited = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framed = vgui.Create( "DFrame", Frame )---------------------------4
Framed:SetPos(ScrW() / 40, ScrH() / 25)
Framed:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framed:SetTitle( "" )
Framed:SetVisible( true )
Framed:SetDraggable( false )
Framed:ShowCloseButton( false )

function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framed.OnCursorEntered = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framed:OnMousePressed( keyCode )
RunConsoleCommand("statsderma4")
end

Framed.OnCursorExited = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

end)-------------eof

concommand.Add("createchoice2", function() -- 1st pokemon
if not IsValid(Frame) then
surface.PlaySound( "Sample 8.wav" )

Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, ScrH() / 1.7 )
Frame:SetSize( ScrW() / 2.8, ScrH() / 2.4 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( false )
Frame:ShowCloseButton( false )

function Frame:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( c1 ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 2.8, ScrH() / 2.4)
end
end

Framea = vgui.Create( "DFrame", Frame )---------------------------1
Framea:SetPos(ScrW() / 40, ScrH() / 3.4 )
Framea:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framea:SetTitle( "" )
Framea:SetVisible( true )
Framea:SetDraggable( false )
Framea:ShowCloseButton( false )

function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framea.OnCursorEntered = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framea:OnMousePressed( keyCode )
RunConsoleCommand("closechoice1")
end

Framea.OnCursorExited = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end

end

concommand.Add("closechoice1", function()
Frame:Remove()
end)

Frameb = vgui.Create( "DFrame", Frame )---------------------------2
Frameb:SetPos(ScrW() / 40, ScrH() / 4.8)
Frameb:SetSize( ScrW() / 3.5, ScrH() / 12 )
Frameb:SetTitle( "" )
Frameb:SetVisible( true )
Frameb:SetDraggable( false )
Frameb:ShowCloseButton( false )

function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Frameb.OnCursorEntered = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Frameb:OnMousePressed( keyCode )
RunConsoleCommand("bagmenu")
end

Frameb.OnCursorExited = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framec = vgui.Create( "DFrame", Frame )---------------------------
Framec:SetPos(ScrW() / 40, ScrH() / 8)
Framec:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framec:SetTitle( "" )
Framec:SetVisible( true )
Framec:SetDraggable( false )
Framec:ShowCloseButton( false )

function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framec.OnCursorEntered = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framec:OnMousePressed( keyCode )

end

Framec.OnCursorExited = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framed = vgui.Create( "DFrame", Frame )---------------------------4
Framed:SetPos(ScrW() / 40, ScrH() / 25)
Framed:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framed:SetTitle( "" )
Framed:SetVisible( true )
Framed:SetDraggable( false )
Framed:ShowCloseButton( false )

function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framed.OnCursorEntered = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framed:OnMousePressed( keyCode )
RunConsoleCommand("statsderma")
end

Framed.OnCursorExited = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

end)-------------eof

concommand.Add("createchoice3", function() -- 2nd pokemon
if not IsValid(Frame) then
surface.PlaySound( "Sample 8.wav" )

Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, ScrH() / 1.7 )
Frame:SetSize( ScrW() / 2.8, ScrH() / 2.4 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( false )
Frame:ShowCloseButton( false )

function Frame:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( c1 ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 2.8, ScrH() / 2.4)
end
end

Framea = vgui.Create( "DFrame", Frame )---------------------------1
Framea:SetPos(ScrW() / 40, ScrH() / 3.4 )
Framea:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framea:SetTitle( "" )
Framea:SetVisible( true )
Framea:SetDraggable( false )
Framea:ShowCloseButton( false )

function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framea.OnCursorEntered = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framea:OnMousePressed( keyCode )
RunConsoleCommand("closechoice1")
end

Framea.OnCursorExited = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end

end

concommand.Add("closechoice1", function()
Frame:Remove()
end)

Frameb = vgui.Create( "DFrame", Frame )---------------------------2
Frameb:SetPos(ScrW() / 40, ScrH() / 4.8)
Frameb:SetSize( ScrW() / 3.5, ScrH() / 12 )
Frameb:SetTitle( "" )
Frameb:SetVisible( true )
Frameb:SetDraggable( false )
Frameb:ShowCloseButton( false )

function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Frameb.OnCursorEntered = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Frameb:OnMousePressed( keyCode )
RunConsoleCommand("bagmenu")
end

Frameb.OnCursorExited = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framec = vgui.Create( "DFrame", Frame )---------------------------
Framec:SetPos(ScrW() / 40, ScrH() / 8)
Framec:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framec:SetTitle( "" )
Framec:SetVisible( true )
Framec:SetDraggable( false )
Framec:ShowCloseButton( false )

function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framec.OnCursorEntered = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framec:OnMousePressed( keyCode )

end

Framec.OnCursorExited = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framed = vgui.Create( "DFrame", Frame )---------------------------4
Framed:SetPos(ScrW() / 40, ScrH() / 25)
Framed:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framed:SetTitle( "" )
Framed:SetVisible( true )
Framed:SetDraggable( false )
Framed:ShowCloseButton( false )

function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framed.OnCursorEntered = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framed:OnMousePressed( keyCode )
RunConsoleCommand("statsderma2")
end

Framed.OnCursorExited = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

end)-------------eof

concommand.Add("createchoice4", function() -- 3rd pokemon
if not IsValid(Frame) then
surface.PlaySound( "Sample 8.wav" )

Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, ScrH() / 1.7 )
Frame:SetSize( ScrW() / 2.8, ScrH() / 2.4 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( false )
Frame:ShowCloseButton( false )

function Frame:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( c1 ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 2.8, ScrH() / 2.4)
end
end

Framea = vgui.Create( "DFrame", Frame )---------------------------1
Framea:SetPos(ScrW() / 40, ScrH() / 3.4 )
Framea:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framea:SetTitle( "" )
Framea:SetVisible( true )
Framea:SetDraggable( false )
Framea:ShowCloseButton( false )

function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framea.OnCursorEntered = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framea:OnMousePressed( keyCode )
RunConsoleCommand("closechoice1")
end

Framea.OnCursorExited = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end

end

concommand.Add("closechoice1", function()
Frame:Remove()
end)

Frameb = vgui.Create( "DFrame", Frame )---------------------------2
Frameb:SetPos(ScrW() / 40, ScrH() / 4.8)
Frameb:SetSize( ScrW() / 3.5, ScrH() / 12 )
Frameb:SetTitle( "" )
Frameb:SetVisible( true )
Frameb:SetDraggable( false )
Frameb:ShowCloseButton( false )

function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Frameb.OnCursorEntered = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Frameb:OnMousePressed( keyCode )
RunConsoleCommand("bagmenu")
end

Frameb.OnCursorExited = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framec = vgui.Create( "DFrame", Frame )---------------------------
Framec:SetPos(ScrW() / 40, ScrH() / 8)
Framec:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framec:SetTitle( "" )
Framec:SetVisible( true )
Framec:SetDraggable( false )
Framec:ShowCloseButton( false )

function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framec.OnCursorEntered = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framec:OnMousePressed( keyCode )

end

Framec.OnCursorExited = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framed = vgui.Create( "DFrame", Frame )---------------------------4
Framed:SetPos(ScrW() / 40, ScrH() / 25)
Framed:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framed:SetTitle( "" )
Framed:SetVisible( true )
Framed:SetDraggable( false )
Framed:ShowCloseButton( false )

function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framed.OnCursorEntered = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framed:OnMousePressed( keyCode )
RunConsoleCommand("statsderma3")
end

Framed.OnCursorExited = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

end)-------------eof

concommand.Add("createchoice5", function() -- 5rd pokemon
if not IsValid(Frame) then
surface.PlaySound( "Sample 8.wav" )

Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, ScrH() / 1.7 )
Frame:SetSize( ScrW() / 2.8, ScrH() / 2.4 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( false )
Frame:ShowCloseButton( false )

function Frame:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( c1 ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 2.8, ScrH() / 2.4)
end
end

Framea = vgui.Create( "DFrame", Frame )---------------------------1
Framea:SetPos(ScrW() / 40, ScrH() / 3.4 )
Framea:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framea:SetTitle( "" )
Framea:SetVisible( true )
Framea:SetDraggable( false )
Framea:ShowCloseButton( false )

function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framea.OnCursorEntered = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framea:OnMousePressed( keyCode )
RunConsoleCommand("closechoice1")
end

Framea.OnCursorExited = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end

end

concommand.Add("closechoice1", function()
Frame:Remove()
end)

Frameb = vgui.Create( "DFrame", Frame )---------------------------2
Frameb:SetPos(ScrW() / 40, ScrH() / 4.8)
Frameb:SetSize( ScrW() / 3.5, ScrH() / 12 )
Frameb:SetTitle( "" )
Frameb:SetVisible( true )
Frameb:SetDraggable( false )
Frameb:ShowCloseButton( false )

function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Frameb.OnCursorEntered = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Frameb:OnMousePressed( keyCode )
RunConsoleCommand("bagmenu")
end

Frameb.OnCursorExited = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framec = vgui.Create( "DFrame", Frame )---------------------------
Framec:SetPos(ScrW() / 40, ScrH() / 8)
Framec:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framec:SetTitle( "" )
Framec:SetVisible( true )
Framec:SetDraggable( false )
Framec:ShowCloseButton( false )

function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framec.OnCursorEntered = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framec:OnMousePressed( keyCode )

end

Framec.OnCursorExited = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framed = vgui.Create( "DFrame", Frame )---------------------------4
Framed:SetPos(ScrW() / 40, ScrH() / 25)
Framed:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framed:SetTitle( "" )
Framed:SetVisible( true )
Framed:SetDraggable( false )
Framed:ShowCloseButton( false )

function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framed.OnCursorEntered = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framed:OnMousePressed( keyCode )
RunConsoleCommand("statsderma5")
end

Framed.OnCursorExited = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

end)-------------eof

concommand.Add("createchoice6", function() -- 5rd pokemon
if not IsValid(Frame) then
surface.PlaySound( "Sample 8.wav" )

Frame = vgui.Create( "DFrame" )
Frame:SetPos( 0, ScrH() / 1.7 )
Frame:SetSize( ScrW() / 2.8, ScrH() / 2.4 )
Frame:SetTitle( "" )
Frame:SetVisible( true )
Frame:SetDraggable( false )
Frame:ShowCloseButton( false )

function Frame:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( c1 ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 2.8, ScrH() / 2.4)
end
end

Framea = vgui.Create( "DFrame", Frame )---------------------------1
Framea:SetPos(ScrW() / 40, ScrH() / 3.4 )
Framea:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framea:SetTitle( "" )
Framea:SetVisible( true )
Framea:SetDraggable( false )
Framea:ShowCloseButton( false )

function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framea.OnCursorEntered = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framea:OnMousePressed( keyCode )
RunConsoleCommand("closechoice1")
end

Framea.OnCursorExited = function()
function Framea:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end

end

concommand.Add("closechoice1", function()
Frame:Remove()
end)

Frameb = vgui.Create( "DFrame", Frame )---------------------------2
Frameb:SetPos(ScrW() / 40, ScrH() / 4.8)
Frameb:SetSize( ScrW() / 3.5, ScrH() / 12 )
Frameb:SetTitle( "" )
Frameb:SetVisible( true )
Frameb:SetDraggable( false )
Frameb:ShowCloseButton( false )

function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Frameb.OnCursorEntered = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Frameb:OnMousePressed( keyCode )
RunConsoleCommand("bagmenu")
end

Frameb.OnCursorExited = function()
function Frameb:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framec = vgui.Create( "DFrame", Frame )---------------------------
Framec:SetPos(ScrW() / 40, ScrH() / 8)
Framec:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framec:SetTitle( "" )
Framec:SetVisible( true )
Framec:SetDraggable( false )
Framec:ShowCloseButton( false )

function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framec.OnCursorEntered = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framec:OnMousePressed( keyCode )

end

Framec.OnCursorExited = function()
function Framec:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

Framed = vgui.Create( "DFrame", Frame )---------------------------4
Framed:SetPos(ScrW() / 40, ScrH() / 25)
Framed:SetSize( ScrW() / 3.5, ScrH() / 12 )
Framed:SetTitle( "" )
Framed:SetVisible( true )
Framed:SetDraggable( false )
Framed:ShowCloseButton( false )

function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

Framed.OnCursorEntered = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( redbox ) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end

function Framed:OnMousePressed( keyCode )
RunConsoleCommand("statsderma6")
end

Framed.OnCursorExited = function()
function Framed:Paint( w, h )
surface.SetDrawColor( 255, 255, 255, 255 )
surface.SetMaterial( invi) -- If you use Material, cache it!
surface.DrawTexturedRect( 0, 0, ScrW() / 3.5, ScrH() / 12)
end
end
end

end)-------------eof


end

concommand.Add("togglef1", function()
if not IsValid(myframe) then
RunConsoleCommand("fadein3")
timer.Create( "fadetimer4", .3, 1, function() CreateFrame() end)

gui.EnableScreenClicker(true)
RunConsoleCommand("fadesound")
return
end

if myframe:IsVisible() then
surface.PlaySound( "emerald_006F.wav" )
myframe:Remove()
gui.EnableScreenClicker( false)
RunConsoleCommand("closechoice1")

else
end
end)

concommand.Add("closemyframe", function()
myframe:Remove()
end)

concommand.Add("fadein3", function()
LocalPlayer():ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0, 255 ), .1, .3, timer.Create( "fadetimer2", .2, 1, function() LocalPlayer():ConCommand("fadeout3") end) )
end)

concommand.Add("fadeout3", function()
DermaFramee = vgui.Create( "DFrame" )
DermaFramee:SetPos( 0, 0 )
DermaFramee:SetSize( ScrW(), ScrH())
DermaFramee:SetTitle( "" )
DermaFramee:SetVisible( true )
DermaFramee:MakePopup()
DermaFramee:SetDraggable(false)
DermaFramee:ShowCloseButton(false)
DermaFramee.Paint = function()
draw.RoundedBox( 0, 0, 0, DermaFramee:GetWide(), DermaFramee:GetTall(), Color( 0, 0, 0, 255 ) )
end
DermaFramee:AlphaTo(0, .3, 0)
timer.Create( "fadetimer3", .3, 1, function() DermaFramee:Close() end)
end)

concommand.Add("fadesound", function()
surface.PlaySound( "emerald_006e.wav" )
end)

concommand.Add("clicksound")

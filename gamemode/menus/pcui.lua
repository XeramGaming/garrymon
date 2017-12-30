concommand.Add("fadein3",function()
LocalPlayer():ScreenFade( SCREENFADE.OUT, Color( 0, 0, 0, 255 ), .1, .3,timer.Create( "fadetimer2", .2, 1,function() LocalPlayer():ConCommand("fadeout3") end) )
end)

concommand.Add("fadeout3",function()
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
timer.Create( "fadetimer3", .3, 1,function() DermaFramee:Close() end) 
end)



concommand.Add("pcui", function()
DermaPanel = vgui.Create( "DFrame" )
DermaPanel:SetPos( 0, 0 )
DermaPanel:SetSize( ScrW(), ScrH())
DermaPanel:SetTitle( "" )
DermaPanel:SetDraggable( true )
DermaPanel:MakePopup()
DermaPanel:ShowCloseButton(false)
DermaPanel:SetDraggable(false)
 
 function DermaPanel:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/steelbac.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

DermaPanel.OnMousePressed = function()
if IsValid(DPanelb) then
DPanela:Remove()
DPanelb:Remove()
DPanelc:Remove()
DPaneld:Remove()
end
end

cir = vgui.Create( "DPanel", DermaPanel )
cir:SetPos( ScrW()/2.9, ScrH()/15.5 ) -- Set the position of the panel
cir:SetSize( ScrW()/95, ScrH()/65  ) -- Set the size of the panel
cir:SetCursor("hand")
cir:SetMouseInputEnabled( true )

cx,cy = cir:GetPos()

cir.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx, -ScrW()/80 ), inQuad( delta, cy, -ScrW()/80 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/30 ), inQuad( delta, ScrH()/50 , ScrW()/40 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/2.9, 0), inQuad( delta,ScrH()/15.5 , 0 ))
	pnl:SetSize( inQuad( delta,ScrW()/95 , 0), inQuad( delta,ScrH()/65, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

 function cir:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/steelcircle.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir.OnMousePressed = function()
end

cir2 = vgui.Create( "DPanel", DermaPanel )
cir2:SetPos( ScrW()/2.5, ScrH()/16 ) -- Set the position of the panel
cir2:SetSize( ScrW()/80, ScrH()/50 ) -- Set the size of the panel
cir2:SetCursor("hand")
cir2:SetMouseInputEnabled( true )

cx2,cy2 = cir2:GetPos()

 function cir2:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/waterc.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir2.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx2, -ScrW()/60 ), inQuad( delta, cy2,-ScrW()/50 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/25 ), inQuad( delta, ScrH()/50 , ScrH()/15 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir2.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir2.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx2, 0), inQuad( delta,cy2 , 0 ))
	pnl:SetSize( inQuad( delta, ScrW()/80, 0), inQuad( delta,ScrH()/50, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir2.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir2.OnMousePressed = function()
RunConsoleCommand("closepcui")
RunConsoleCommand("pcui2")
end

cir3 = vgui.Create( "DPanel", DermaPanel )
cir3:SetPos( ScrW()/2.2, ScrH()/16 ) -- Set the position of the panel
cir3:SetSize( ScrW()/80, ScrH()/50 ) -- Set the size of the panel
cir3:SetCursor("hand")
cir3:SetMouseInputEnabled( true )

cx3,cy3 = cir3:GetPos()

 function cir3:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/grassyc.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end 

cir3.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx3, -ScrW()/60 ), inQuad( delta, cy3,-ScrW()/50 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/22 ), inQuad( delta, ScrH()/50 , ScrH()/15 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir3.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir3.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx3, 0), inQuad( delta,cy3 , 0 ))
	pnl:SetSize( inQuad( delta, ScrW()/80, 0), inQuad( delta,ScrH()/50, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir3.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir3.OnMousePressed = function()
RunConsoleCommand("closepcui")
RunConsoleCommand("pcui3")
end
 
DPanel = vgui.Create( "DPanel", DermaPanel )
DPanel:SetPos( ScrW()/3, ScrH()/5 ) -- Set the position of the panel
DPanel:SetSize( ScrW()/8, ScrH()/5 ) -- Set the size of the panel
DPanel:SetCursor("hand")
DPanel:SetMouseInputEnabled( true )

 function DPanel:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/pxchariz.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

DPanel.OnMousePressed = function()
ct = CurTime()
hook.Add( "Think", "pc1", function()
if CurTime() > ct + .07 then 

if IsValid(DPanelb) then
DPanela:Remove()
DPanelb:Remove()
DPanelc:Remove()
DPaneld:Remove()
end

	x, y = gui.MousePos()
		DPanel:SetPos(x-ScrW()/20,y-ScrH()/10) 
		
		else end
end )
	end
	
	DPanel.OnMouseReleased = function()
	if CurTime() > ct + .07 then else RunConsoleCommand("1pk") end
hook.Remove("Think", "pc1")
	end
end)

concommand.Add("closepcui", function()
DermaPanel:Remove()
hook.Remove("Think", "pc1")

if IsValid(DPanelb) then
DPanela:Remove()
DPanelb:Remove()
DPanelc:Remove()
DPaneld:Remove()
end

if IsValid(DermaPanel2) then
DermaPanel2:Remove()
end

if IsValid(DermaPanel3) then
DermaPanel3:Remove()
end
end)

concommand.Add("1pk", function()
x,y = DPanel:GetPos()
DPanela = vgui.Create( "DPanel", DermaPanel )
DPanela:SetPos(x-ScrW()/20,y+ScrH()/20) -- Set the position of the panel
DPanela:SetSize( ScrW()/15, ScrH()/14 ) -- Set the size of the panel
DPanela:SetCursor("hand")

function DPanela:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/summary.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

DPanela.OnMousePressed = function()
function DPanela:Paint( w, h )
	surface.SetDrawColor( 155,155, 155, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/summary.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
end
	
	DPanela.OnMouseReleased = function()
	function DPanela:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/summary.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
	end

DPanelb = vgui.Create( "DPanel", DermaPanel )
DPanelb:SetPos(x+ScrW()/8.8,y+ScrH()/20) -- Set the position of the panel
DPanelb:SetSize( ScrW()/15, ScrH()/14 ) -- Set the size of the panel
DPanelb:SetCursor("hand")

function DPanelb:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/item.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

DPanelb.OnMousePressed = function()
function DPanelb:Paint( w, h )
	surface.SetDrawColor( 155,155, 155, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/item.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
end
	
	DPanelb.OnMouseReleased = function()
	function DPanelb:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/item.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
	end

DPanelc = vgui.Create( "DPanel", DermaPanel )
DPanelc:SetPos(x+ScrW()/34,y-ScrH()/31) -- Set the position of the panel
DPanelc:SetSize( ScrW()/15, ScrH()/14 ) -- Set the size of the panel
DPanelc:SetCursor("hand")

function DPanelc:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/swap.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

DPanelc.OnMousePressed = function()
function DPanelc:Paint( w, h )
	surface.SetDrawColor( 155,155, 155, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/swap.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
end
	
	DPanelc.OnMouseReleased = function()
	function DPanelc:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/swap.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
	end

DPaneld = vgui.Create( "DPanel", DermaPanel )
DPaneld:SetPos(x+ScrW()/31,y+ScrH()/8) -- Set the position of the panel
DPaneld:SetSize( ScrW()/15, ScrH()/14 ) -- Set the size of the panel
DPaneld:SetCursor("hand")

function DPaneld:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/release.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

DPaneld.OnMousePressed = function()
function DPaneld:Paint( w, h )
	surface.SetDrawColor( 155,155, 155, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/release.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
end
	
	DPaneld.OnMouseReleased = function()
	function DPaneld:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/release.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end
	end

end)

concommand.Add("pcui2", function()
DermaPanel2 = vgui.Create( "DFrame" )
DermaPanel2:SetPos( 0, 0 )
DermaPanel2:SetSize( ScrW(), ScrH())
DermaPanel2:SetTitle( "" )
DermaPanel2:SetDraggable( true )
DermaPanel2:MakePopup()
DermaPanel2:ShowCloseButton(false)
DermaPanel2:SetDraggable(false)
 
 function DermaPanel2:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/water.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir = vgui.Create( "DPanel", DermaPanel2 )
cir:SetPos( ScrW()/2.9, ScrH()/15.5 ) -- Set the position of the panel
cir:SetSize( ScrW()/95, ScrH()/65  ) -- Set the size of the panel
cir:SetCursor("hand")
cir:SetMouseInputEnabled( true )

cx,cy = cir:GetPos()

cir.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx, -ScrW()/80 ), inQuad( delta, cy, -ScrW()/80 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/30 ), inQuad( delta, ScrH()/50 , ScrW()/40 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/2.9, 0), inQuad( delta,ScrH()/15.5 , 0 ))
	pnl:SetSize( inQuad( delta,ScrW()/95 , 0), inQuad( delta,ScrH()/65, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

 function cir:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/steelcircle.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir.OnMousePressed = function()
RunConsoleCommand("closepcui")
RunConsoleCommand("pcui")
end

cir2 = vgui.Create( "DPanel", DermaPanel2 )
cir2:SetPos( ScrW()/2.5, ScrH()/16 ) -- Set the position of the panel
cir2:SetSize( ScrW()/80, ScrH()/50 ) -- Set the size of the panel
cir2:SetCursor("hand")
cir2:SetMouseInputEnabled( true )

cx2,cy2 = cir2:GetPos()

 function cir2:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/waterc.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir2.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx2, -ScrW()/60 ), inQuad( delta, cy2,-ScrW()/50 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/25 ), inQuad( delta, ScrH()/50 , ScrH()/15 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir2.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir2.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx2, 0), inQuad( delta,cy2 , 0 ))
	pnl:SetSize( inQuad( delta, ScrW()/80, 0), inQuad( delta,ScrH()/50, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir2.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir2.OnMousePressed = function()
end

cir3 = vgui.Create( "DPanel", DermaPanel2 )
cir3:SetPos( ScrW()/2.2, ScrH()/16 ) -- Set the position of the panel
cir3:SetSize( ScrW()/80, ScrH()/50 ) -- Set the size of the panel
cir3:SetCursor("hand")
cir3:SetMouseInputEnabled( true )

cx3,cy3 = cir3:GetPos()

 function cir3:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/grassyc.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end 

cir3.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx3, -ScrW()/60 ), inQuad( delta, cy3,-ScrW()/50 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/22 ), inQuad( delta, ScrH()/50 , ScrH()/15 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir3.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir3.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx3, 0), inQuad( delta,cy3 , 0 ))
	pnl:SetSize( inQuad( delta, ScrW()/80, 0), inQuad( delta,ScrH()/50, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir3.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir3.OnMousePressed = function()
RunConsoleCommand("closepcui")
RunConsoleCommand("pcui3")
end
end)

concommand.Add("pcui3", function()
DermaPanel3 = vgui.Create( "DFrame" )
DermaPanel3:SetPos( 0, 0 )
DermaPanel3:SetSize( ScrW(), ScrH())
DermaPanel3:SetTitle( "" )
DermaPanel3:SetDraggable( true )
DermaPanel3:MakePopup()
DermaPanel3:ShowCloseButton(false)
DermaPanel3:SetDraggable(false)
 
 function DermaPanel3:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/grassy.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir = vgui.Create( "DPanel", DermaPanel3 )
cir:SetPos( ScrW()/2.9, ScrH()/15.5 ) -- Set the position of the panel
cir:SetSize( ScrW()/95, ScrH()/65  ) -- Set the size of the panel
cir:SetCursor("hand")
cir:SetMouseInputEnabled( true )

cx,cy = cir:GetPos()

cir.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx, -ScrW()/80 ), inQuad( delta, cy, -ScrW()/80 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/30 ), inQuad( delta, ScrH()/50 , ScrW()/40 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/2.9, 0), inQuad( delta,ScrH()/15.5 , 0 ))
	pnl:SetSize( inQuad( delta,ScrW()/95 , 0), inQuad( delta,ScrH()/65, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

 function cir:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/steelcircle.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir.OnMousePressed = function()
RunConsoleCommand("closepcui")
RunConsoleCommand("pcui")
end

cir2 = vgui.Create( "DPanel", DermaPanel3 )
cir2:SetPos( ScrW()/2.5, ScrH()/16 ) -- Set the position of the panel
cir2:SetSize( ScrW()/80, ScrH()/50 ) -- Set the size of the panel
cir2:SetCursor("hand")
cir2:SetMouseInputEnabled( true )

cx2,cy2 = cir2:GetPos()

 function cir2:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/waterc.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end

cir2.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx2, -ScrW()/60 ), inQuad( delta, cy2,-ScrW()/50 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/25 ), inQuad( delta, ScrH()/50 , ScrH()/15 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir2.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir2.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx2, 0), inQuad( delta,cy2 , 0 ))
	pnl:SetSize( inQuad( delta, ScrW()/80, 0), inQuad( delta,ScrH()/50, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir2.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir2.OnMousePressed = function()
RunConsoleCommand("closepcui")
RunConsoleCommand("pcui2")
end

cir3 = vgui.Create( "DPanel", DermaPanel3 )
cir3:SetPos( ScrW()/2.2, ScrH()/16 ) -- Set the position of the panel
cir3:SetSize( ScrW()/80, ScrH()/50 ) -- Set the size of the panel
cir3:SetCursor("hand")
cir3:SetMouseInputEnabled( true )

cx3,cy3 = cir3:GetPos()

 function cir3:Paint( w, h )
	surface.SetDrawColor( 255,255, 255, 255 )
	surface.SetMaterial( Material("materials/vgui/logos/ui/grassyc.png")	) 
	surface.DrawTexturedRect( 0, 0, w, h)
end 

cir3.OnCursorEntered = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx3, -ScrW()/60 ), inQuad( delta, cy3,-ScrW()/50 ))
	pnl:SetSize( inQuad( delta, ScrW()/70, ScrW()/22 ), inQuad( delta, ScrH()/50 , ScrH()/15 ) )
end )
anim:Start( .3) -- Animate for two seconds
cir3.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end

cir3.OnCursorExited = function() 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", cir3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, cx3, 0), inQuad( delta,cy3 , 0 ))
	pnl:SetSize( inQuad( delta, ScrW()/80, 0), inQuad( delta,ScrH()/50, 0 ) )
end )
anim:Start( 2 ) -- Animate for two seconds
cir3.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end

end
end)
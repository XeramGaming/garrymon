local ourMat = Material( "materials/vgui/logos/ui/redbackground.jpg" ) 
local ourMat2 = Material( "materials/vgui/logos/ui/goct3.png" ) 
local ourMat3 = Material("materials/vgui/logos/ui/rect.jpg")
local ourMat4 = Material("materials/vgui/logos/ui/pxchar.png")
local ourMat5 = Material("materials/vgui/logos/ui/pxchariz.png")
local ourMat6 = Material("materials/vgui/logos/ui/charmy2.png")
local ourMat7 = Material("materials/vgui/logos/ui/qmark.png")
local ourMat8 = Material("materials/vgui/logos/ui/lapras.png")
local ourMat9 = Material("materials/vgui/logos/ui/mimikyu.png")
local ourMat10 = Material("materials/vgui/logos/ui/pokeball.png")
local ourMat11 = Material("materials/vgui/logos/ui/a-black-circle-hi.png")

surface.CreateFont( "pokedexfont2", {
	font = "Times New Roman", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 50,
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

a = 0  
b = 0
c = 0
d = 0

concommand.Add("pokedex2", function()
panel = vgui.Create( "DPanel" )
panel:SetSize( ScrW(), ScrH() )
panel:SetPos( 0,0 )
panel:SetMouseInputEnabled(true)
gui:EnableScreenClicker(true)

function panel:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH()  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat3	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/2.17, ScrH()/9.2, ScrW()/2, ScrH()/1.3  )
	
end

icon = vgui.Create( "DModelPanel", panel )
icon:SetPos(ScrW()/30,ScrH()/9.25)
icon:SetSize( ScrW()/2.337, ScrH()/2 )
icon:SetModel( "models/player/kleiner.mdl" ) -- you can only change colors on playermodels
function icon:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon:SetCamPos( Vector(40,40,40) )

icon.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end

overpanel = vgui.Create( "DPanel" )
overpanel:SetSize( ScrW()/2, ScrH()/10 )
overpanel:SetPos( ScrW()/2,0 )

function overpanel:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH()  )
end

overpanel2 = vgui.Create( "DPanel" )
overpanel2:SetSize( ScrW()/2, ScrH()/5 )
overpanel2:SetPos( ScrW()/2,ScrH()/1.13 )

function overpanel2:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat	) -- If you use Material, cache it!
	surface.DrawTexturedRect( 0, 0, ScrW(), ScrH()  )
end 
 

panel2 = vgui.Create( "DPanel",panel )
panel2:SetSize( ScrW(), ScrH() )
panel2:SetPos( 0,0 )
   
function panel2:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat2	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/2, ScrH()/2.4, ScrW()/2, ScrH()/6  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat5	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.9, ScrH()/2.4, ScrW()/8, ScrH()/6  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat10	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.6, ScrH()/2.32, ScrW()/12, ScrH()/9  )
	
	draw.DrawText( "003   Charmander", "pokedexfont2", ScrW()/1.25, ScrH()/2.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
end

panel3 = vgui.Create( "DPanel",panel )
panel3:SetSize( ScrW(), ScrH() )
panel3:SetPos( 0,0 )

function panel3:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat2	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/2.15, ScrH()/3.7, ScrW()/2, ScrH()/6  )
	
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat6	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/2.25, ScrH()/4.8, ScrW()/8, ScrH()/6  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat10	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.75, ScrH()/3.55, ScrW()/12, ScrH()/9  )
	
	draw.DrawText( "002   Charmeleon", "pokedexfont2",ScrW()/1.34, ScrH()/3.25, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end

panel4 = vgui.Create( "DPanel",panel )
panel4:SetSize( ScrW(), ScrH() )
panel4:SetPos( 0,0 )

function panel4:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat2	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/2.3, ScrH()/8, ScrW()/2, ScrH()/6  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat4) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/2.15, ScrH()/7.4, ScrW()/11, ScrH()/9  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat10) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.87, ScrH()/7.4, ScrW()/12, ScrH()/9  )
	
	draw.DrawText( "001   Charmander", "pokedexfont2",ScrW()/1.4, ScrH()/6.2, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
end

panel5 = vgui.Create( "DPanel",panel )
panel5:SetSize( ScrW(), ScrH() )
panel5:SetPos( 0,0 )

function panel5:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat2	) -- If you use Material, cache it! 
	surface.DrawTexturedRect( ScrW()/2, ScrH()/1.77, ScrW()/2, ScrH()/6  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat7	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.81, ScrH()/1.71, ScrW()/13, ScrH()/10  )
	
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat11	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.58, ScrH()/1.7, ScrW()/14.5, ScrH()/11  )
	
		draw.DrawText( "004     -------------", "pokedexfont2",ScrW()/1.24, ScrH()/1.65, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end

panel6 = vgui.Create( "DPanel",panel )
panel6:SetSize( ScrW(), ScrH() )
panel6:SetPos( 0,0 )

function panel6:Paint( w, h )
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat2	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/2, ScrH()/1.41, ScrW()/2, ScrH()/6  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat8	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.81, ScrH()/1.38, ScrW()/13, ScrH()/10  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat10	) -- If you use Material, cache it!
	surface.DrawTexturedRect( ScrW()/1.61, ScrH()/1.385, ScrW()/12, ScrH()/9  )
	
	draw.DrawText( "005    Lapras", "pokedexfont2",ScrW()/1.3, ScrH()/1.34, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
end

function panel:OnMouseWheeled(delta)
if delta == 1 then 
print(a)
print(b)
print(c)
print(d)
print(panel3.x) 
			if a == 3 and b == 1 and c == 0 then 
		if panel3.x == 57 then  
		b = 0 		
		
		icon4:Remove()
		
		icon3 = vgui.Create( "DModelPanel", panel )
icon3:SetPos(ScrW()/30,ScrH()/9.25)
icon3:SetSize( ScrW()/2.337, ScrH()/2 )
icon3:SetModel( "models/player/barney.mdl" ) -- you can only change colors on playermodels
function icon3:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon3.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end

icon3:SetCamPos( Vector(40,40,40) )
		
 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning 
end 
    
local anim = Derma_Anim( "EaseInQuad", panel4, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/15, 0 ), inQuad( delta, -ScrH()/7, ScrH()/7 )) 
end )  
	   
anim:Start( .1 )       
     
  
panel3.Think = function( self ) 
	if anim:Active() then
		anim:Run()    
		 
	end 
end  
 
 local function inQuad( fraction, beginning, change ) 
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/28, -ScrW()/32 ), inQuad( delta, -ScrH()/7, ScrH()/7  ))
end )
	 
anim:Start( .1 )


panel4.Think = function( self ) 
	if anim:Active() then
		anim:Run() 
		
				
	end
end 
 
 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/20, ScrW()/64 ), inQuad( delta, -ScrH()/7.1, ScrH()/7   ))
end ) 
	 
anim:Start( .1 )


panel5.Think = function( self )  
	if anim:Active() then
		anim:Run() 
		
				
	end 
end 

 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/20, -ScrW()/50 ), inQuad( delta, -ScrH()/7.1,ScrH()/7.1   ))
end ) 
	 
anim:Start( .1 )
 
panel6.Think = function( self )  
	if anim:Active() then
		anim:Run() 
		
				
	end
end 
 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel6, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/20, -ScrW()/19.5 ), inQuad( delta, -ScrH()/6, ScrH()/6  ))
end ) 
	 
anim:Start( .1 )


panel2.Think = function( self )  
	if anim:Active() then
		anim:Run() 
		
				
	end
end 

 local function inQuad( fraction, beginning, change )   
	return change * ( fraction ^ 2 ) + beginning    
end  

local anim = Derma_Anim( "EaseInQuad", panel7, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, 0, 0 ), inQuad( delta,  -ScrH()/6, ScrH()/5.8  ))
end )    
	 
anim:Start( .1 )

panel7.Think = function( self )  
	if anim:Active() then
		anim:Run() 
		
				
	end 
end 
 end 
	end  
	
	if c == 1 and d == 0 then   
	if panel4.x == 80 and panel2.x == 3 then 
	a = 3
	b = 1 
	c = 0
	d = 0
	
	icon5:Remove()
	
	icon4 = vgui.Create( "DModelPanel", panel )
icon4:SetPos(ScrW()/30,ScrH()/9.25)
icon4:SetSize( ScrW()/2.337, ScrH()/2 )
icon4:SetModel( "models/player/riot.mdl" ) -- you can only change colors on playermodels
icon4:SetColor( Color( 0, 0, 0 ) )
function icon4:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon4.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end	
	
	local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end
   
local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/150, -ScrW()/50), inQuad( delta, -ScrH()/6.5,0  )) 
end ) 
	  
anim:Start( .1 ) 
           
 
panel2.Think = function( self ) 
	if anim:Active() then 
		anim:Run()   
		    
	end  
end  
	
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end
   
local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/25, -ScrW()/42), inQuad( delta, -ScrH()/6.5,0  )) 
end ) 
	  
anim:Start( .1 ) 
           
 
panel5.Think = function( self ) 
	if anim:Active() then 
		anim:Run()    
		    
	end 
end  
 
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning 
end 
  
local anim = Derma_Anim( "EaseInQuad", panel6, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/15, ScrW()/25), inQuad( delta, -ScrH()/6.5,0  )) 
end )  
	    
anim:Start( .1 )

 
panel6.Think = function( self ) 
	if anim:Active() then
		anim:Run()   
		
	end
end   
 
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end 
 
local anim = Derma_Anim( "EaseInQuad", panel7, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/26, ScrW()/25), inQuad( delta, -ScrH()/6,0  )) 
end ) 
	   
anim:Start( .1 )

panel7.Think = function( self )   
	if anim:Active() then  
		anim:Run()    
		 
	end 
end      
	end  
	end  
	   
	if c == 1 and d == 1 then 
	if panel4.x == 80 and panel2.x == 3 then    
	d = 0
	
	icon6:Remove()
	
	icon5 = vgui.Create( "DModelPanel", panel )
icon5:SetPos(ScrW()/30,ScrH()/9.25)
icon5:SetSize( ScrW()/2.337, ScrH()/2 )
icon5:SetModel( "models/player/skeleton.mdl" ) -- you can only change colors on playermodels
function icon5:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon5.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end
	
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning 
end
   
local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/90, -ScrW()/40), inQuad( delta, -ScrH()/6.5,0  )) 
end ) 
	  
anim:Start( .1 ) 
           
 
panel5.Think = function( self ) 
	if anim:Active() then  
		anim:Run()   
		    
	end 
end  
 
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning 
end 
  
local anim = Derma_Anim( "EaseInQuad", panel6, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/30, -ScrW()/33), inQuad( delta, -ScrH()/6.5,0  )) 
end )  
	    
anim:Start( .1 )  

 
panel6.Think = function( self ) 
	if anim:Active() then
		anim:Run()   
		
	end
end   
 
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning  
end
 
local anim = Derma_Anim( "EaseInQuad", panel7, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/17, ScrW()/45), inQuad( delta, -ScrH()/6,0  )) 
end ) 
	   
anim:Start( .1 )
 
panel7.Think = function( self )   
	if anim:Active() then  
		anim:Run()    
		 
	end 
end      
	end  
	end   

	if a == 3 then 
	if panel3.x == -48 or panel3.x == 8 or panel3.x == 7 then 
	a = 2
	
	icon3:Remove()
	
	icon2 = vgui.Create( "DModelPanel", panel )
icon2:SetPos(ScrW()/30,ScrH()/9.25)
icon2:SetSize( ScrW()/2.337, ScrH()/2 )
icon2:SetModel( "models/player/alyx.mdl" ) -- you can only change colors on playermodels
function icon2:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon2.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() ) 
 pnl.Paint(self, w, h)
end

icon2:SetCamPos( Vector(40,40,40) )
	
		local function inQuad( fraction, beginning, change ) 
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel4, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/15, -ScrW()/33), 0) 
end )
	   
anim:Start( .1 )

panel3.Think = function( self )  
	if anim:Active() then
		anim:Run() 
	end 
end 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning 
end 

local anim = Derma_Anim( "EaseInQuad", panel3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/120,-ScrW()/47))
end ) 
	
anim:Start( .1 )
panel4.Think = function( self )
	if anim:Active() then
		anim:Run() 
	end
end 
 
 		local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/16,-ScrW()/35 ), 0)
end )
	
anim:Start( .1 )
panel5.Think = function( self )
	if anim:Active() then
		anim:Run()   
	end
  end
   
   		local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end


local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/32, -ScrW()/32 ), 0)
end )
	 
anim:Start( .1 )
panel6.Think = function( self )
	if anim:Active() then
		anim:Run()    
	end
  end
 end
	end 

if a == 2 then  
	if panel3.x == -48 or panel3.x == -47 then
a = 0

icon2:Remove()

icon = vgui.Create( "DModelPanel", panel )
icon:SetPos(ScrW()/30,ScrH()/9.25)
icon:SetSize( ScrW()/2.337, ScrH()/2 )
icon:SetModel( "models/player/kleiner.mdl" ) -- you can only change colors on playermodels
function icon:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon:SetCamPos( Vector(40,40,40) )

icon.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end

		local function inQuad( fraction, beginning, change ) 
	return change * ( fraction ^ 2 ) + beginning
end 

local anim = Derma_Anim( "EaseInQuad", panel4, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/28, -ScrW()/29 ), 0)
end )
	  
anim:Start( .1 ) 

panel3.Think = function( self ) 
	if anim:Active() then 
		anim:Run() 
	end
end  
  
local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning 
end 

local anim = Derma_Anim( "EaseInQuad", panel3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/40, ScrW()/33 ), 0) 
end ) 
	
anim:Start( .1 )
panel4.Think = function( self )
	if anim:Active() then
		anim:Run() 
	end
end 
    
  local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, -ScrW()/35, ScrW()/34), 0)
end )
	
anim:Start( .1 )
panel6.Think = function( self )
	if anim:Active() then
		anim:Run()   
	end
  end
   
 end 
	end 
	
end 
if delta == -1 then -- mouse wheel down
print(a)
print(b)
print(c)
print(d)
print(panel3.y)
	if IsValid(panel) then 
	  
	if c == 1 and d == 0 then  
	if panel4.x == 80 and panel2.x == 3 then  
	d = 1  
	
	icon5:Remove()
icon6 = vgui.Create( "DModelPanel", panel )
icon6:SetPos(ScrW()/30,ScrH()/9.25)
icon6:SetSize( ScrW()/2.337, ScrH()/2 )
icon6:SetModel( "models/player/corpse1.mdl" ) -- you can only change colors on playermodels
icon6:SetColor( Color( 0, 0, 0 ) )
function icon6:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon6.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )  
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end

icon6:SetCamPos( Vector(40,40,40) )

	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end
   
local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/30, ScrW()/28), inQuad( delta, -ScrH()/6.5,0  )) 
end ) 
	  
anim:Start( .1 ) 
           
 
panel5.Think = function( self ) 
	if anim:Active() then 
		anim:Run()   
		    
	end 
end  
 
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning 
end 
  
local anim = Derma_Anim( "EaseInQuad", panel6, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/15, ScrW()/27), inQuad( delta, -ScrH()/6.5,0  )) 
end )  
	    
anim:Start( .1 )

 
panel6.Think = function( self ) 
	if anim:Active() then
		anim:Run()   
		
	end
end   
 
	  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end
 
local anim = Derma_Anim( "EaseInQuad", panel7, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/26, -ScrW()/40), inQuad( delta, -ScrH()/6,0  )) 
end ) 
	   
anim:Start( .1 )

 
panel7.Think = function( self )   
	if anim:Active() then  
		anim:Run()    
		 
	end 
end      
	end  
	end   
		if b == 1 and c == 0 then
		if panel7.y == -150 and panel3.y == -128 then
 c = 1 
      
icon4:Remove()
icon5 = vgui.Create( "DModelPanel", panel )
icon5:SetPos(ScrW()/30,ScrH()/9.25)
icon5:SetSize( ScrW()/2.337, ScrH()/2 )
icon5:SetModel( "models/player/skeleton.mdl" ) -- you can only change colors on playermodels
function icon5:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon5.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end

icon5:SetCamPos( Vector(40,40,40) )
  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end 
 
local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, -ScrW()/30, ScrW()/28 ), inQuad( delta, -ScrH()/6.5,0  )) 
end )    
	    
anim:Start( .1 )     
   
  
panel3.Think = function( self )   
	if anim:Active() then  
		anim:Run()    
	end  
end   
   
  local function inQuad( fraction, beginning, change )   
	return change * ( fraction ^ 2 ) + beginning 
end
  
local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, -ScrW()/14.7, ScrW()/32), inQuad( delta, -ScrH()/6.5,0  )) 
end ) 
	 
anim:Start( .1 )
  
 
panel4.Think = function( self )  
	if anim:Active() then 
		anim:Run()   
	end
end  

  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel6, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/30, -ScrW()/32 ), inQuad( delta, -ScrH()/6.5,0  )) 
end ) 
	 
anim:Start( .1 )

 
panel5.Think = function( self ) 
	if anim:Active() then
		anim:Run()   
		
	end
end  

  local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end 

local anim = Derma_Anim( "EaseInQuad", panel7, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/200, -ScrW()/30), inQuad( delta, -ScrH()/6,0  )) 
end ) 
	 
anim:Start( .1 )   

 
panel6.Think = function( self ) 
	if anim:Active() then 
		anim:Run()   
		
	end
end  
  end
 end 
 
		if a == 3 and b == 0 then   
		if panel3.x == 8 or panel3.x == 7 or panel3.x == 57 then
 b = 1
 icon3:Remove()
icon4 = vgui.Create( "DModelPanel", panel )
icon4:SetPos(ScrW()/30,ScrH()/9.25)
icon4:SetSize( ScrW()/2.337, ScrH()/2 )
icon4:SetModel( "models/player/riot.mdl" ) -- you can only change colors on playermodels
icon4:SetColor( Color( 0, 0, 0 ) )
function icon4:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon4.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end

icon4:SetCamPos( Vector(40,40,40) )

 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning 
end 
    
local anim = Derma_Anim( "EaseInQuad", panel4, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/20, 0 ), inQuad( delta, 0, -ScrH()/6 )) 
end ) 
	  
anim:Start( .1 )       
   
 
panel3.Think = function( self ) 
	if anim:Active() then
		anim:Run()    
		
	end
end  
 
 local function inQuad( fraction, beginning, change ) 
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/28, 0 ), inQuad( delta, 0, -ScrH()/7  ))
end )
	 
anim:Start( .1 )


panel4.Think = function( self ) 
	if anim:Active() then
		anim:Run() 
		
				
	end
end 
 
 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/20, -ScrW()/60 ), inQuad( delta, 0, -ScrH()/6.5  ))
end ) 
	 
anim:Start( .1 )


panel5.Think = function( self )  
	if anim:Active() then
		anim:Run() 
		
				
	end 
end 

 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/20, ScrW()/60 ), inQuad( delta, 0, -ScrH()/6.5  ))
end ) 
	 
anim:Start( .1 ) 


panel6.Think = function( self )  
	if anim:Active() then
		anim:Run() 
		
				
	end
end 

 local function inQuad( fraction, beginning, change )  
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel6, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/20, -ScrW()/60 ), inQuad( delta, 0, -ScrH()/6.5  ))
end ) 
	 
anim:Start( .1 )


panel2.Think = function( self )  
	if anim:Active() then
		anim:Run() 
		
				
	end
end 
 
panel7 = vgui.Create( "DPanel",panel )
panel7:SetSize( ScrW(), ScrH() )
panel7:SetPos( 0,0 )

function panel7:Paint( w, h )  
		surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat2	) -- If you use Material, cache it! 
	surface.DrawTexturedRect( ScrW()/2, ScrH()/1.15, ScrW()/2, ScrH()/6  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat9	) -- If you use Material, cache it! 
	surface.DrawTexturedRect( ScrW()/1.8, ScrH()/1.12, ScrW()/18, ScrH()/15  )
	
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( ourMat11	) -- If you use Material, cache it! 
	surface.DrawTexturedRect( ScrW()/1.63, ScrH()/1.12, ScrW()/14.5, ScrH()/11  )
	
	draw.DrawText( "006    Mimikyu", "pokedexfont2",ScrW()/1.3, ScrH()/1.1, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	
end 

 local function inQuad( fraction, beginning, change )   
	return change * ( fraction ^ 2 ) + beginning    
end  

local anim = Derma_Anim( "EaseInQuad", panel7, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, 0, 0 ), inQuad( delta, 0, -ScrH()/6  ))
end )   
	  
anim:Start( .1 ) 


panel7.Think = function( self )   
	if anim:Active() then
		anim:Run() 
		
				
	end 
end 
 end 
	end  
	
	if a == 2 then  
	if panel3.x == -48 and panel2.x == -48 or panel3.x == 8 or panel3.x == -47 then
a = 3
icon2:Remove()
icon3 = vgui.Create( "DModelPanel", panel )
icon3:SetPos(ScrW()/30,ScrH()/9.25)
icon3:SetSize( ScrW()/2.337, ScrH()/2 )
icon3:SetModel( "models/player/barney.mdl" ) -- you can only change colors on playermodels
function icon3:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon3.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() )
 pnl.Paint(self, w, h)
end

icon3:SetCamPos( Vector(40,40,40) )

		local function inQuad( fraction, beginning, change ) 
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel4, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, ScrW()/28, ScrW()/32 ), 0)
end )
	  
anim:Start( .1 )

panel3.Think = function( self ) 
	if anim:Active() then
		anim:Run()
	end
end 

local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning 
end 

local anim = Derma_Anim( "EaseInQuad", panel3, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta,-ScrW()/40, ScrW()/33 ), 0) 
end ) 
	
anim:Start( .1 )
panel4.Think = function( self )
	if anim:Active() then
		anim:Run() 
	end
end 
 
 		local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, ScrW()/30, ScrW()/32 ), 0)
end )
	
anim:Start( .1 )
panel5.Think = function( self )
	if anim:Active() then
		anim:Run()   
	end
  end
   
   		local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel5, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, 0, ScrW()/32 ), 0)
end )
	
anim:Start( .1 )
panel6.Think = function( self )
	if anim:Active() then
		anim:Run()   
	end
  end
 end
	end 
	 
	if a == 0 then    
a = 1 
if IsValid(panel) and a == 1 then 
a = 2
icon:Remove()
icon2 = vgui.Create( "DModelPanel", panel )
icon2:SetPos(ScrW()/30,ScrH()/9.25)
icon2:SetSize( ScrW()/2.337, ScrH()/2 )
icon2:SetModel( "models/player/alyx.mdl" ) -- you can only change colors on playermodels
function icon2:LayoutEntity( Entity ) return end -- disables default rotation
local pnl = baseclass.Get("DModelPanel")

icon2.Paint = function(self,w,h)
 surface.SetDrawColor( Color(200,200,200,255) )
 surface.DrawRect( 0, 0, self:GetWide(), self:GetTall() ) 
 pnl.Paint(self, w, h)
end

icon2:SetCamPos( Vector(40,40,40) )

		local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel4, function( pnl, anim, delta, data )
	pnl:SetPos( inQuad( delta, 0, ScrW()/28 ), 0)
end )
	
anim:Start( .1 )
panel2.Think = function( self )
	if anim:Active() then
		anim:Run()
	end
end
		local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel3, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, 0, ScrW()/33 ), 0)
end )
	
anim:Start( .1 )
panel3.Think = function( self )
	if anim:Active() then
		anim:Run() 
	end
end

		local function inQuad( fraction, beginning, change )
	return change * ( fraction ^ 2 ) + beginning
end

local anim = Derma_Anim( "EaseInQuad", panel2, function( pnl, anim, delta, data )
	pnl:SetPos( -inQuad( delta, 0, ScrW()/33 ), 0)
end )
	
anim:Start( .1 )
panel4.Think = function( self )
	if anim:Active() then
		anim:Run()   
	end
  end
end --eof
	end
	end
	end
	end

concommand.Add("closepokedex2",function()
panel:Remove()
overpanel:Remove()
overpanel2:Remove()
gui.EnableScreenClicker( false )
a = 0
b = 0
c = 0
d = 0 
end)
end)



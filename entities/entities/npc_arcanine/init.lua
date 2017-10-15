AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

	self.BaseClass.Initialize(self)
	self:SetModel( "models/rtbmodels/pokemon/arcanine.mdl" )

end

function ENT:SetupDataTables()

	self:NetworkVar( "Float", 0, "LVL" )
	self:NetworkVar( "Float", 0, "HP" )
	self:NetworkVar( "Float", 0, "DEF" )
	self:NetworkVar( "Float", 0, "ATK" )
	self:NetworkVar( "Float", 0, "SPATK" )
	self:NetworkVar( "Float", 0, "SPDEF" )
	self:NetworkVar( "Float", 0, "SPD" )
	self:SetVar( "LVL", 1 )
	self:SetVar("DEF", 6)
	self:SetVar("HP", 13)
	self:SetVar("ATK", 7)
	self:SetVar("SPATK", 6)
	self:SetVar("SPDEF", 6)
	self:SetVar("SPD", 7)

end

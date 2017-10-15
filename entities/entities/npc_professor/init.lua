AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()

	self.BaseClass.Initialize(self)
	self:SetModel("models/Kleiner.mdl")
    self:SetID( "Professor Newman" )

end

function ENT:RunBehaviour()

	self:StartActivity( ACT_IDLE )
	self.loco:SetDesiredSpeed( 300 )

	while ( true ) do

		self:FaceNearestPlayer()
		self:RunControllers()
		coroutine.yield()

	end

end
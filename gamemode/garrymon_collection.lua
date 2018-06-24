local GCollection = {}
local GCollection_mt = { __index = GCollection }

AccessorFunc( GCollection, "player", "Player" )

function GCollection:Init( pl )
  self.garrymon = {}
  self:SetPlayer( pl )
  pl:SetGCollection( self )
end

function GCollection:AddGarrymon( garrymon )
  table.insert( self.garrymon, garrymon )
end

function GCollection:SwapOrder( index1, index2 )
  local temp = self.garrymon[index1]
  self.garrymon[index1] = self.garrymon[index2]
  self.garrymon[index2] = temp
end

function GCollection:BoxFull()
  return box.garrymon == 30
end

function GCollection:CreateGCollection( pl )
  local gc = {}
  setmetatable( gc, GCollection_mt )
  GCollection:Init( pl )
end

local META = FindMetaTable("Player")
if META then
  AccessorFunc( META, "gcollection", "GCollection" )
end
META = nil

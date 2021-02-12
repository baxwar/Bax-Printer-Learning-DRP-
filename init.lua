AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

local interval = 1 

function ENT:Initialize()

self:SetModel("models/props_c17/consolebox03a.mdl")
self.timer = CurTime()
self:PhysicsInit(SOLID_VPHYSICS)
self:SetMoveType(MOVETYPE_VPHYSICS)
self:SetSolid(SOLID_VPHYSICS)

local phys = self:GetPhysicsObject()

if phys:IsValid() then
    phys:Wake()
    end
end

function ENT:Think()
if CurTime() > self.timer + interval then
    self.timer = CurTime()

    self:SetMoneyAmount(self:GetMoneyAmount() + 4000000)

    end

end

function ENT:Use(act , call)
    local money = self:GetMoneyAmount()
    self:SetMoneyAmount(0)
    call:addMoney(money)
end 
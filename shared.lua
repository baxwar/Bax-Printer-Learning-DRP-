ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "Custom Printer"

ENT.Spawnable = true


function ENT:SetupDataTables()
    self:NetworkVar("Int" , 1 , "MoneyAmount")
end
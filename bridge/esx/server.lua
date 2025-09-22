local bridge = {}

local ESX = exports['es_extended']:GetCoreObject()

function bridge.getPlayerJob(source)
    if GetResourceState('es_extended') ~= 'started' then lib.print.error('Selected framework is esx, but es_extended is not started') return end
    local Player = ESX.GetPlayerFromId(source)
    local job = Player.getJob()
    local playerJob = job.name

    return playerJob
end

return bridge
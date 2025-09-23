local bridge = {}

local QBCore = exports['qb-core']:GetCoreObject()

function bridge.getPlayerJob(source)
    if GetResourceState('qb-core') ~= 'started' then lib.print.error('Selected framework is qb, but qb-core is not started') return end
    local Player = QBCore.Functions.GetPlayer(source)
    local playerJob = Player.PlayerData.job

    return playerJob
end

return bridge
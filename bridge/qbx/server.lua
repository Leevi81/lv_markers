local bridge = {}

function bridge.getPlayerJob(source)
    if GetResourceState('qbx_core') ~= 'started' then lib.print.error('Selected framework is qbx, but qbx_core is not started') return end
    local Player = exports.qbx_core:GetPlayer(source)
    local playerJob = Player.PlayerData.job

    return playerJob
end

return bridge
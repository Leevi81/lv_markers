lib.callback.register('lv_markers:server:getPlayerJob', function(source)
    local src = source
    return bridge.getPlayerJob(src)
end)

lib.versionCheck('Leevi81/lv_markers')

local frameworkResources = {
    ['es_extended'] = 'esx',
    ['qb-core'] = 'qb',
    ['qbx_core'] = 'qbx'
}

function detectFramework()
    for resourceName, frameworkName in pairs(frameworkResources) do
        if GetResourceState(resourceName) == 'started' then
            return ('bridge.%s.%s'):format(frameworkName, 'server')
        end
    end
end

bridge = require(detectFramework())

lib.callback.register('lv_markers:server:getPlayerJob', function(source)
    local src = source
    return bridge.getPlayerJob(src)
end)
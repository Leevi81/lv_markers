local frameworkResources = {
    ['es_extended'] = 'esx',
    ['qb-core'] = 'qb',
    ['qbx_core'] = 'qbx'
}

function detectFramework()
    for resourceName, frameworkName in pairs(frameworkResources) do
        if GetResourceState(resourceName) == 'started' then
            return ('bridge.%s.%s'):format(frameworkName, lib.context)
        end
    end
    lib.print.error('Framework not detected')
end

bridge = require(detectFramework())
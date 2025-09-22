local clientConfig = require 'config.client'

for i=1, #clientConfig.locations do
    local locations = clientConfig.locations[i]

    local playerJob = lib.callback.await('lv_markers:server:getPlayerJob', false)
    if locations.job ~= nil then
        if playerJob ~= locations.job then 
            return
        end
    end
    
    local marker = lib.marker.new({
        type = locations.type,
        coords = locations.coords,
        width = locations.width,
        height = locations.height, 
        color = locations.color,
        rotate = locations.rotate,
        bobUpAndDown = locations.bobUpAndDown
    })

    local point = lib.points.new({
        coords = locations.coords,
        distance = locations.distance
    })

    function point:nearby()
        if self.currentDistance <= locations.distance then
            marker:draw()
        end
    end
end

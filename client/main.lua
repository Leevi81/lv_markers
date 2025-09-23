local clientConfig = require 'config.client'

local playerJob = lib.callback.await('lv_markers:server:getPlayerJob', false)

function onJobUpdate(job)
    playerJob = job
end

for i=1, #clientConfig.locations do
    local locations = clientConfig.locations[i]
    
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
        if self.currentDistance <= locations.distance and (not locations.job or locations.job == playerJob.name) then
            marker:draw()
        end
    end
end



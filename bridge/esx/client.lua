local bridge = {}

RegisterNetEvent("esx:setJob", function(job) 
    onJobUpdate(job)
end)

return bridge


local config = {
    pedFrequency = 1.0, -- 0.0 = No peds on streets, 1.0 normal ped ammounts on streets.
    trafficFrequency = 1.0, -- 0.0 = No peds on streets, 1.0 normal ped ammounts on streets.
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedFrequency)
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)
        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
        SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency) 
        SetVehicleDensityMultiplierThisFrame(config.trafficFrequency)
    end 
end)

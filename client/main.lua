local particleDictionary = "scr_indep_fireworks"
local particleName = "scr_indep_firework_starburst"

RegisterNetEvent('startFireworks')
AddEventHandler('startFireworks', function(fireworks)
    RequestNamedPtfxAsset(particleDictionary)
    while not HasNamedPtfxAssetLoaded(particleDictionary) do
        Citizen.Wait(0)
    end
    
    for _, coords in pairs(fireworks) do
        UseParticleFxAssetNextCall(particleDictionary)
        local particle = StartParticleFxLoopedAtCoord(particleName, coords.x, coords.y, coords.z + 20.0, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
        Citizen.Wait(5000)  -- Havaifişeklerin ne kadar süreyle gösterileceğini belirleyebilirsiniz
        StopParticleFxLooped(particle, 0)
    end
end)

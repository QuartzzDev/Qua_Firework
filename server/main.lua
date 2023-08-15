ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('qua', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    -- İstediğiniz havaifişek koordinatları buraya ekleyebilirsiniz
    local fireworks = {
        {x = 100.0, y = 100.0, z = 100.0},
        {x = 1100.0, y = 1100.0, z = 11000.0},
        
    }
    
    TriggerClientEvent('startFireworks', -1, fireworks)
end, false)

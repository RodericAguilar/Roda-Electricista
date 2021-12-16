if Config.framework == 'esx' then 
    ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
RegisterServerEvent('Roda-Electricista:PayJob')
AddEventHandler('Roda-Electricista:PayJob', function(money, can)
    local src = source
        if can == 'sdafghjrehrw2345dfe' then 
            local xPlayer = ESX.GetPlayerFromId(src)
            xPlayer.addAccountMoney(Config.Account, money)
        else
            DropPlayer(src, 'Bye, Bye Cheater')
        end

end)



elseif Config.framework == 'qbcore' then 
    local QBCore = exports['qb-core']:GetCoreObject()
RegisterServerEvent('Roda-Electricista:PayJob')
AddEventHandler('Roda-Electricista:PayJob', function(money, can)
    local src = source
    if Config.framework == 'qbcore' then 
        if can == 'sdafghjrehrw2345dfe' then 
            local xPlayer = QBCore.Functions.GetPlayer(src)
            xPlayer.Functions.AddMoney('cash', money, 'Pay Job')
        else
            DropPlayer(src, 'Bye, Bye Cheater')
        end
    end
end)

end



-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------




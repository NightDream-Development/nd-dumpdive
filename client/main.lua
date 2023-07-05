lib.locale()
busy = false

CreateThread(function()
    if Config.target == 'qb' then
    exports['qb-target']:AddTargetModel(Config.Props, {
        options = {
            {
                label = locale('target.label'),
                icon = 'fas fa-dumpster',
                action = function(ent)
                    dumpsterdive(ent)
                end,
                canInteract = function(ent)
                    return not isBusy
                end
            }
        },
        distance = 1.5
    })
else
    if Config.target == 'ox' then
        exports.ox_target:addModel(Config.Props, 
        options = {
            name = 'startwork',
            icon = 'fa-solid fa-dumpster,
            label = locale('target.label'),
            onSelect = function(ent)
                isBusy = true
                dumpsterdive(ent)
            end,
            canInteract = function()
                return not isBusy
            end,
            distance = 1.5,
        })

end
end)

RegisterNetEvent('nd-dumpdive:client:ResetEntity', function(netId)
    if NetworkGetEntityIsNetworked(netId) then NetworkUnregisterNetworkedEntity(netId) end
end)


function dumpsterdive(ent)
    QBCore.Functions.TriggerCallback('nd-dumpdive:server:getEntityState', function(wasDived)
        if not wasDived then
            isBusy = true
        

            if not Config.Minigame then
                ProgressBar(ent)
            else
                local success = MiniGame()
                if success then
                    ProgressBar(ent)
                else
                    QBCore.Functions.Notify(locale('notifies.failed_minigame'))
                    isBusy = false
                end
            end
        else
            QBCore.Functions.Notify(locale('notifies.already_dived'), 'error', 5000)
        end
    end, ObjToNet(ent))
end
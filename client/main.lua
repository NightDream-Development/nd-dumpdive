CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.Props, {
        options = {
            {
                label = Lang:t('target.label'),
                icon = 'fas fa-dumpster',
                action = function(ent)
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
                                    QBCore.Functions.Notify(Lang:t('notifies.failed_minigame'))
                                    isBusy = false
                                end
                            end
                        else
                            QBCore.Functions.Notify(Lang:t('notifies.already_dived'), 'error', 5000)
                        end
                    end, ObjToNet(ent))
                end,
                canInteract = function(ent)
                    return not isBusy
                end
            }
        },
        distance = 1.5
    })
end)

RegisterNetEvent('nd-dumpdive:client:ResetEntity', function(netId)
    if NetworkGetEntityIsNetworked(netId) then NetworkUnregisterNetworkedEntity(netId) end
end)
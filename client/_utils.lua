QBCore = exports['qb-core']:GetCoreObject()
isBusy = false

if  Config.Minigame == 'ps-ui' then
    function MiniGame()
        local success = false
        exports['ps-ui']:Circle(function(result)
            success = result
        end, 3, 10)
        return success
    end
end

function ProgressBar(ent)
    QBCore.Functions.Progressbar('diving_in_dumpster', Lang:t('progress.diving'), Config.ProgressTime * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = true,
        disableCombat = true,
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 1,
    }, {}, {}, function()
        if not NetworkGetEntityIsNetworked(ent) then NetworkRegisterEntityAsNetworked(ent) end
        TriggerServerEvent('nd-dumpdive:server:SetEntity', ObjToNet(ent), true)
        if not Config.ResetOnReboot then TriggerServerEvent('nd-dumpdive:server:ResetEntity', ObjToNet(ent)) end
        isBusy = false
        ClearPedTasks(PlayerPedId())
    end, function()
        isBusy = false
        ClearPedTasks(PlayerPedId())
    end)
end
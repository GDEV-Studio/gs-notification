-- Fonction principale pour afficher une notification
function ShowNotification(type, title, message, duration)
    SendNUIMessage({
        action = 'showNotification',
        type = type,
        title = title,
        message = message,
        duration = duration or 3000
    })
end

-- Fonction pour créer une notification CUSTOM avec icône et couleurs personnalisées
function ShowCustomNotification(icon, bgColor, accentColor, title, message, duration)
    SendNUIMessage({
        action = 'showCustomNotification',
        icon = icon,
        bgColor = bgColor,
        accentColor = accentColor,
        progressColor = accentColor,
        title = title,
        message = message,
        duration = duration or 3000
    })
end

-- Exports
exports('ShowNotification', ShowNotification)
exports('ShowCustomNotification', ShowCustomNotification)

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    SendNUIMessage({
        action = 'loadConfig',
        config = Config
    })
end)

-- Fonction helper pour compter les éléments d'une table
function GetTableLength(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

if Config.DevMode then
    RegisterCommand('gs-notif', function(source, args)
        if #args < 3 then
            ShowNotification('erreur', 'Erreur', 'Usage `/gs-notif [type] [titre] [message]`', 7000)
            return
        end

        local type = args[1]
        local title = args[2]
        local message = table.concat(args, ' ', 3)

        if not Config.Notifications[type] then
            ShowNotification('erreur', 'Erreur', 'Le type ' .. type .. ' n\'existe pas !', 7000)
            return
        end

        ShowNotification(type, title, message, 4000)
    end, false)
end

if Config.DevMode then
    RegisterNetEvent('gs-notification:updateAvailable')
    AddEventHandler('gs-notification:updateAvailable', function(currentVersion, newVersion, githubLink)
        Citizen.Wait(3000)

        -- Afficher la notification de mise à jour AVEC FORMATAGE
        ShowCustomNotification(
            'fa-download',
            'bg-orange-700',
            'bg-orange-400',
            '⚠️ **Mise à jour disponible**',
            '**Nouvelle version:** v' ..
            newVersion .. '\\n**Actuelle:** v' .. currentVersion .. '\\n\\nConsultez la **console F8** pour télécharger',
            12000
        )

        print('^2━━━━━━━━━━━━━━━━━━ MISE À JOUR DISPONIBLE ━━━━━━━━━━━━━━━━━━^0')
        print('^5⚙️  gs-notification ^7| ^1v' .. currentVersion .. ' ^7→ ^2v' .. newVersion .. '^0')
        print('^7➡️  Téléchargement : ^5' .. githubLink .. '^0')
        print('^2━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━^0')
    end)
end

RegisterNetEvent('gs-notification:client:show', function(type, title, message, duration)
    ShowNotification(type, title, message, duration)
end)

RegisterNetEvent('gs-notification:client:showCustom', function(icon, bgColor, accentColor, title, message, duration)
    ShowCustomNotification(icon, bgColor, accentColor, title, message, duration)
end)
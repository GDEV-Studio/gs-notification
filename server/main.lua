exports('ShowNotification', function(target, type, title, message, duration)
    TriggerClientEvent('gs-notification:client:show', target, type, title, message, duration)
end)

exports('ShowCustomNotification', function(target, icon, bgColor, accentColor, title, message, duration)
    TriggerClientEvent('gs-notification:client:showCustom', target, icon, bgColor, accentColor, title, message, duration)
end)
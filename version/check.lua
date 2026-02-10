local RESOURCE_NAME = GetCurrentResourceName()

local function PrintColor(color, text)
    print(("^%s%s^0"):format(color, text))
end

local function GetLocalVersion()
    local fxmanifest = LoadResourceFile(RESOURCE_NAME, "fxmanifest.lua")
    if fxmanifest then
        local version = fxmanifest:match("\nversion%s+['\"]([^'\"]+)['\"]")
        return version or "Unknown"
    end
    return "Unknown"
end

local function GetLocalGithub()
    local fxmanifest = LoadResourceFile(RESOURCE_NAME, "fxmanifest.lua")
    if fxmanifest then
        local github = fxmanifest:match("\ngithub%s+['\"]([^'\"]+)['\"]")
        return github or "Unknown"
    end
    return "Unknown"
end

local function GetGithubRaw()
    local fxmanifest = LoadResourceFile(GetCurrentResourceName(), "fxmanifest.lua")
    if fxmanifest then
        local raw = fxmanifest:match("\ngithub_raw%s+['\"]([^'\"]+)['\"]")
        return raw or nil
    end
    return nil
end

local function CheckVersion()
    local localVersion = GetLocalVersion()
    local githubLink = GetLocalGithub()
    local versionCheckUrl = GetGithubRaw()

    if not versionCheckUrl then
        PrintColor("1", "github_raw non défini dans le fxmanifest.lua")
        return
    end

    PerformHttpRequest(versionCheckUrl, function(statusCode, response, headers)
        if statusCode == 200 then
            local remoteVersion = response:match("\nversion%s+['\"]([^'\"]+)['\"]")

            if remoteVersion then
                if localVersion ~= remoteVersion then
                    PrintColor("5",
                        ("⚙️  gs-notification ^7| Version actuelle : ^1v%s ^7| Nouvelle version : ^2v%s"):format(
                        localVersion, remoteVersion))
                    PrintColor("5", ("^7➡️  Téléchargement : ^5%s"):format(githubLink))
                    TriggerClientEvent('gs-notification:updateAvailable', -1, localVersion, remoteVersion, githubLink)
                end
            else
                PrintColor("1", "Impossible d'extraire la version depuis GitHub")
            end
        else
            PrintColor("1", "Erreur de connexion à GitHub (Code HTTP: " .. statusCode .. ")")
        end
    end, "GET")
end

-- Vérifier au démarrage de la ressource
AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == RESOURCE_NAME then
        Citizen.Wait(2000)
        CheckVersion()
    end
end)

-- Commande pour vérifier manuellement
if Config.DevMode then
    RegisterCommand('checkversion', function()
        CheckVersion()
    end, true)
end

fx_version 'cerulean'
game 'gta5'

author 'Yusu_sauvage'
description 'Système de Notifications'
version '1.0.0'
github 'https://github.com/GDEV-Studio/gs-notification'
github_raw 'https://raw.githubusercontent.com/GDEV-Studio/gs-notification/main/fxmanifest.lua'

ui_page 'html/index.html'

shared_scripts {
    'config.lua'
}

server_scripts {
    'version/check.lua',
    'server/main.lua'
}

client_scripts {
    'client/main.lua'
}

files {
    'html/index.html',
    'html/script/index.js',
}
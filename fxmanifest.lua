fx_version 'cerulean'
game 'gta5'

author 'Leevi81'
description 'An optimized marker script for FiveM'
version '1.0.0'

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
    'shared/*.lua'
}

files {
    'config/*.lua',
    'bridge/**/*.lua'
}
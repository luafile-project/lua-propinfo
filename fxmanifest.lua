fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'luafile'
description 'A resource for managing prop information and interactions'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua'
}

client_scripts {
    'prop_info.lua'
}

dependencies {
    'ox_lib',
    'ox_target'
}

ui_page 'ui/index.html'

files {
    'ui/index.html'
} 
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

client_script 'client/*.lua'

server_script 'server/*.lua'

files {
    'locales/*.json'
  }

shared_scripts {
    '@qb-core/shared/locale.lua',
    '@ox_lib/init.lua',
    'locales/en.lua',
    'config.lua'
}
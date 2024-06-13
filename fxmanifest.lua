fx_version 'cerulean'
game 'gta5'

description 'React App For FiveM'
author 'Matheus Peluso'
version '1.0.0'


ui_page 'html/dist/index.html'

files {
	'html/dist/index.html',
	'html/dist/**/*',
}

shared_script 'config.js'
client_script 'client/**/*'
server_script 'server/**/*'
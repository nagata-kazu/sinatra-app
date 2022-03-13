require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'dotenv/load'
require 'webrick'
require './model'
require './helpers_definitions'


#  次のコードで仮想開発環境での
#  -o [ip address]オプションが不要になる
#  ただしoオプションなしの場合sinatra/reloaderでreloadできない
#set :environment, :production

#静的ファイル用dirを`public`から任意名に変更する(ex. static)
set :public_folder, File.dirname(__FILE__) + '/static'

helpers do
	#エスケープ
	include Rack::Utils
    alias_method :h, :escape_html

	include HelpersDefinitions
end

get '/' do
#	@mydatabases = Mydatabase.all

	erb :index
end

post '/form_sample' do
	sample_txt = params['sample_txt']
	# Validation
	@sample_txt = valid(sample_txt)

	erb :form_sample
end
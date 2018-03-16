require 'dotenv/load'
require 'bundler'
require 'json'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/result' do
    puts params
    @user_pref_personality = params[:personality]
    @pets_matched = Pets.new(@user_pref_personality)
    @pets_matched.get_pet_files

    
    erb :result
  end
end

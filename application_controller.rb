require 'dotenv/load'
require 'bundler'
require 'json'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
<<<<<<< HEAD
<<<<<<< HEAD
  
  post '/result' do
    erb.index
    # puts params 
=======
=======
>>>>>>> 34e3b9863883a13bbdf94121a9547dd962f2f198
  post '/result' do
    puts params
    @user_pref_personality = params[:personality]
    @pets_matched = Pets.new(@user_pref_personality)
    @pets_matched.get_pet_files

    
    erb :result
<<<<<<< HEAD
>>>>>>> 34e3b9863883a13bbdf94121a9547dd962f2f198
=======
>>>>>>> 34e3b9863883a13bbdf94121a9547dd962f2f198
  end
end

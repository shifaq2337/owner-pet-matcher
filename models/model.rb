require 'net/http'
require 'json'
require 'pp'

class Pets 
   attr_reader :personality
    
   def initialize(personality) 
        @personality = personality
   end
    def get_pet_files
        url = ''
        uri = URI(url)
        response = Net::HTTP.get(uri)
        result = JSON.parse(response)
        pets_info = result["petfinder"]["pets"]["pet"]
        pets_info_copy = Array.new(pets_info)
        i = 1
        n = 25
        until i > n do
            pet_description = pets_info_copy[i]["description"]["$t"]
            word_match_info = pets_info_copy[i]["description"]["$t"].include?"#{@personality}"
            pet_name = pets_info_copy[i]["name"]["$t"]
            pet_pic = pets_info_copy[i]["media"]["photos"]["photo"][3]["$t"]
            descriptions = {"#{word_match_info}"=> ["#{pet_name}","#{pet_pic}","#{pet_description}"]}
            #descriptions.keys
            descriptions.select{|k,v| k == "true"}
            i+=1
        end
    end
end

#TESTING  
#a = Pets.new("dog")
#puts a.get_pet_files



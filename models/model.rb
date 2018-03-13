require 'net/http'
require 'json'
require 'pp'



url = 'http://api.petfinder.com/pet.find?format=json&output=full&location=11209&'
#url = 'http://api.petfinder.com/pet.getRandom?format=json&output=full&'
uri = URI(url)
response = Net::HTTP.get(uri)
result = JSON.parse(response)
pets_info = result["petfinder"]["pets"]["pet"]
pets_info_copy = Array.new(pets_info)
puts pets_info_copy[1]["description"]["$t"]
puts pets_info_copy[1]["description"]["$t"].include?'playful'

#loop does not work b/c info inside description becomes blank
#i = 0
#n = 25
#until i > n do
#    puts result["petfinder"]["pets"]["pet"][i]
#    i+=1
#end


=begin
def get_pet_file
  
end
#puts get_pet_file

class Pet 
    attr_reader :animal_type, :zip_code 
    def initialize(animal_type, zip_code)
        @animal_type = animal_type
        @zip_code = zip_code
    end
    
    def get_pet_file

        uri = URI(url)
        response = Net::HTTP.get(uri)
        result = JSON.parse(response)
        result["petfinder"]["pet"]["description"]["$t"]
    end
end
=end


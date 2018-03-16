require 'net/http'
require 'json'
require 'pp'

#
 
uri = URI(url)
response = Net::HTTP.get(uri)
result = JSON.parse(response)
pets_info = result["petfinder"]["pets"]["pet"]
# pp pets_info
pets_info_copy = Array.new(pets_info)
puts pets_info_copy[1]["description"]["$t"]
# puts pets_info_copy[1]["description"]["$t"].include?("personality")

# if pets_info_copy[1]["description"]["$t"].include?'playful'
#     puts "I FOUND YOUR PET!"
# else
#     puts "Sorry, a pet cannot be found based the description that you gave just now."
# end

#loop does not work b/c info inside description becomes blank
# i = 0
# n = 25
# until i > n do
#     puts result["petfinder"]["pets"]["pet"]["description"]#[i]
#     i+=1
# end


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


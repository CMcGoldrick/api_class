require 'unirest'

system "clear" # system enters commands in the terminal 

puts "weather brought to you by the best".center(70) # COOL!
puts "=" * 70
puts 

print " " * 15 + "enter a city"
city = gets.chomp

print " " * 15 + "enter a state"
state = gets.chomp

response = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{city}%2C%20#{state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")

channel = response.body["query"]["results"]["channel"]
temp_unit = channel["units"]["temperature"]

location_city = channel["location"]["city"]
location_state = channel["location"]["region"]

temperature = channel["item"]["condition"]["temp"]
condition = channel["item"]["condition"]["text"]

p location_city
p location_state
p temperature
p condition


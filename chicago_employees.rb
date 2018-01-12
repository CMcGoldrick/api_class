require "unirest"

response = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json") # get is the http verb
employees = response.body

employees.each do |employee|
  # puts employee["name"]
  # puts employee["job_titles"]
  # puts employee["annual_salary"]

puts "Name: #{employee['name']}"
end





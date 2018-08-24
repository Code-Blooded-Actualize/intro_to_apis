require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")

# puts response.body.readpartial
data = response.parse

data.each do |employee_hash|
  puts "#{employee_hash["name"]} works as a #{employee_hash["job_titles"]} in the #{employee_hash["department"]} department"
end
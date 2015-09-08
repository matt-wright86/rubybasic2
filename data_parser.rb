require 'csv'
require 'erb'

requires = []
CSV.foreach("./planet_express_logs.csv", headers: true) {|line|
  requires << line.to_hash

# puts requires

}

html = File.read("./report.erb")

amount = requires.map {|cash| cash["Money"].to_i}.reduce(:+)

# reverses the string, then adds a comma after any sequence of 3 digits that
# is also followed by another digit, then reverses it back.
amount = amount.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse



# travel_data = Hash.new
# travel_data ["Pilot"] => "Fry"
# travel_data ["Number_trips"] => "0"
# travel_data ["Bonus"] => "0"

travel_data = [
{"Pilot" => "Fry" , "Number_trips" => 0, "Bonus" => 0 },
{"Pilot" => "Amy" , "Number_trips" => 0, "Bonus" => 0 },
{"Pilot" => "Bender" , "Number_trips" => 0, "Bonus" => 0 },
{"Pilot" => "Leela" , "Number_trips" => 0, "Bonus" => 0 }
]


requires.each {|driver_name|

    if driver_name["Destination"] == "Earth"
      pilot_name = "Fry"
    elsif driver_name["Destination"] == "Mars"
      pilot_name = "Amy"
    elsif driver_name["Destination"] == "Uranus"
      pilot_name = "Bender"
    else
      pilot_name = "Leela"
    end

selected_pilots = travel_data.select {|traveler| traveler["Pilot"] == pilot_name }
pilot_final = selected_pilots.first

print pilot_final


initial_bonus = driver_name ["Money"].to_i * 0.10
pilot_final["Bonus"] = pilot_final["Bonus"] + initial_bonus

pilot_final["Number_trips"] = pilot_final["Number_trips"] + 1



    }

puts travel_data

comp_html = ERB.new(html).result(binding)

# print comp_html

File.open("./index-output.html", "wb") { |new_file|
    new_file.write (comp_html)
    new_file.close()
}

words = "Tacos must not have lettuce Only meat and cheese and salsa"

words_array = words.split(" ")

puts words_array

new_mapped_array = words_array.map do |word|
   if word.length == 5
    return_val = "#{word} - #{word.length}"
   else
     return_val = "#{word} -bad"
   end
   return_val
 end

    puts "\n\n------------"
    puts ""
    puts "\n\n"
   print new_mapped_array

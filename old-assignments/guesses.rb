puts "I am going to guess your number."
puts "Guess a number from 1 to 100"
puts "Are you ready?"
gets

max = 100
min = 1

while condition do
  computer_guess = (max + min) / 2


    puts "I guessed #{computer_guess}."
    puts "Was ths (h)igher or (l)ower than your number?"
    answer = gets.chomp
    if answer == "y"
      puts "yes"
      min = computer_guess
    elseif answer == "l"
    max = computer_guess
  else

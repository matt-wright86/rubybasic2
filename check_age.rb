def uk_rules(x)
  puts "You are from the United Kingdom."

  puts "What is your age?"
  age = gets.chomp.to_i

  if age < 15
    puts "You can do nothing!"
    elsif age.between?(16, 17)
      puts "Are your parents there?(yes/no)"
      consent = gets.chomp
        if consent == "yes"
      puts "You can drink"
          elsif puts "You cannot drink!!"
        end
    elsif age.between?(18, 24)
    puts "You can vote and you can also drink alcoholic beverages."
    elsif age >= 25
    puts "You can vote, drink alcoholic bevarages and you can also rent a car."
  else

  end

  puts ""
  puts ""

  puts "Change countr(y), E(n)d app"

  yn = gets.chomp
  if yn.downcase == "n"
    abort
  else
check_age(0, "")
  end

end

def check_age(age, country)

  loop {
    puts "What country are you from? (UK)/(US)"
    country = gets.chomp
    if country.upcase == "UK"
      uk_rules(age)
      elsif country.upcase == "US"
      puts "You are from the United States of America."
    else puts "The only supported countries are the United Kingdom and the United States."
      check_age(0, "")

    end

    puts "What is your age?"
    age = gets.chomp.to_i


    if age < 18
      puts "You can do nothing!"
      elsif age.between?(18, 20)
      puts "You can vote and smoke."
      elsif age.between?(21, 24)
      puts "You can vote and I can also drink alcoholic beverages."
      elsif age >= 25
      puts "You can vote, drink alcoholic bevarages and you can also rent a car."
      else
        break
    end
    puts ""
    puts ""
    puts "Change countr(y), E(n)d app."

    yn = gets.chomp

    if yn.downcase == "n"
      abort
    else
    end

  }

end

check_age(0, "")

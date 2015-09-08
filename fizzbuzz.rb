def fizzbuzz(max)


 # out creates string, if the string of fizz, fizzbuzz and buzz, everything does
 # not meet the criteria (divisible by 3, 5, or 15 is returned as an integer.



  1.upto(max).each {|i|
    out = ''
    out << 'Fizzbuzz' if i % 15 == 0
    out << 'Fizz' if i % 3 == 0
    out << 'Buzz' if i % 5 == 0
    out = i if out.empty?
    puts out
  }
end

fizzbuzz(100)

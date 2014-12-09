#Lesson 1 Assignment: Calculator

puts 'Provide the first number.'
num1 = gets.chomp.to_f

while true

  puts 'Would you like to add (+), multiply (*), subtract (-), divide (/), or finish (=)?'
  response = gets.chomp


  if ['+', '*', '-', '/'].include? response
    puts 'Provide the next number'
    num = gets.chomp.to_f
    case response
      when '+'
        num1 += num
      when '*'
        num1 *= num
      when '-'
        num1 -= num
      when '/'
        num1 /= num
    end
    puts num1
  else
    if response == '='
      puts "Thank you for using calculator. Your final result is #{num1}"
      break
    else
      puts 'Incorrect operation.'
    end
  end
end




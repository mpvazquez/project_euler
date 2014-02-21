#If we list all the natural numbers below 10 
#that are multiples of 3 or 5, we get 3, 5, 6 
#and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 
#1000.

puts "Please enter max number in range you would like to check for multiplicity (non-inclusive of given number)"
  max_num = gets.chomp.to_i

puts "Please enter the first multiple to check."
  multiple_one = gets.chomp.to_i

puts "Please enter the second multiple to check."
  multiple_two = gets.chomp.to_i

range = (1...max_num).to_a

numbers_to_add = []

range.select do |number| 
  if number%multiple_one == 0 || number%multiple_two == 0
    numbers_to_add << number
  end
end

counter = 0

total = numbers_to_add.reduce(:+)

puts total

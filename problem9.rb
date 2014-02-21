def triplet(a, b, c)
  a**2 + b**2 == c**2
end

nums = (1...1000).to_a.reverse

nums.each do |c|
  nums.each do |b|
    a = 1000 - b -c
    puts a*b*c if triplet(a, b, c) && a*b*c > 0
  end
end


# puts "Please enter a number"
# num1 = gets.chomp.to_i

# def p_triplet(num1)

#   num2 = num1 + 1
#   num3 = num2 + 1

#   while (num1 ** 2) + (num2 ** 2) != num3 ** 2
#     num1 + 1
#   end

#   return "#{num1} < #{num2} < #{num3}"
# end

# p_triplet(num1)
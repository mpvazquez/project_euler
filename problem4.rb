require 'pry'

def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end

def product_of_two_three_digit_numbers
  factors = (100..999).to_a.reverse
  products = []

  factors.repeated_combination(2) do |num1, num2|
    product = num1 * num2
    if is_palindrome?(product)
      products << product
    end
  end

  products.max

end

puts product_of_two_three_digit_numbers


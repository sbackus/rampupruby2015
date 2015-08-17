numbers = (1..100)

def is_divisible(number, by)
  number % by == 0
end

def fizzbuzz number
  if is_divisible(number, 15)
    puts "fizzbuzz"
  elsif is_divisible(number, 5)
    puts "buzz"
  elsif is_divisible(number, 3)
    puts "fizz"
  else
    puts number
  end
end

numbers.each do |number|
  fizzbuzz(number)
end



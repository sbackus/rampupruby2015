def calculate_rent rent, utils, cable, people
  return ((rent + utils + cable)/people).round(2)
end

puts (calculate_rent 2600, 55, 32, 4)




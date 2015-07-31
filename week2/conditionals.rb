def get_likes_tacos_from_user
  puts "do you like tacos? yes or no?"
  answer = gets.chomp
  if answer == "yes" or answer == "no"
    return answer
  else
    get_likes_tacos_from_user
  end
end

# this program was made by Sam
bank_account = 15
can_get_loan = true

ingrediant = "onions"

likes_tacos = get_likes_tacos_from_user

if ingrediant == "onions"
  puts "onion soup"
end


# this is my conditional
if bank_account != 1000000 or can_get_loan
  puts "buy a house"
elsif bank_account > 100
  puts "buy a nice dinner"
elsif bank_account > 10 and likes_tacos
  puts "buy a taco"
elsif (bank_account > 10 and !likes_tacos)
  puts "buy a burger"
else
  puts "get a job"
end

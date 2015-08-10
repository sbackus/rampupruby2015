def shift letter, distance
  alphabet = (" ".."z").to_a
  letter_index = alphabet.find_index(letter)
  if letter_index + distance > alphabet.length
    shifted_index = distance - (alphabet.length - letter_index)
  else
    shifted_index = letter_index + distance
  end
  return alphabet[shifted_index]
end


def encrypt phrase
  chars = phrase.split("")
  answer = ""
  chars.each do |character|
    answer << shift(character, 5)
  end
  return answer
end

def decrypt phrase
  chars = phrase.split("")
  answer = ""
  chars.each do |character|
    answer << shift(character, -5)
  end
  return answer
end


puts encrypt 'Hello World'
puts decrypt 'Mjqqt%\twqi'

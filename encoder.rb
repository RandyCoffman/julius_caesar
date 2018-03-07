require 'date' # This allows you to get the date from Ruby's built in 
Alphabet = [*?A..?Z], [*?a..?z] # Constant that uses RegEx to go through the range of A-Z and a-z

def caesar_cipher(string, shift = DateTime.now.day) # I set shift to be the current day if I do not include an argument for it
  string.tr Alphabet.join, Alphabet.map{ |array| array.rotate shift }.join # This looks at every single character in the string and uses .map to rotate the array to bascially let it shift how ever many times within the array to assign the new character to the string variable
end

def reverse_caesar_cipher(string, shift = DateTime.now.day)
  string.tr Alphabet.join, Alphabet.map{ |array| array.rotate -shift }.join # This is like the same as in the above function, but this -shift will go backwards
end
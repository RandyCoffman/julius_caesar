require 'date'
Alphabet = [*?A..?Z], [*?a..?z]

def caesar_cipher(string, shift)
  d = DateTime.now
  if shift == 4 || shift == -4
  string.tr Alphabet.join, Alphabet.map{ |array| array.rotate shift }.join
  else
    string.tr Alphabet.join, Alphabet.map{ |array| array.rotate d.day }.join
  end
end
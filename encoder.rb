def caesar_cipher(string)
  string
end

def convert(string)
  strings_i_want = []
  x = 0
  string.length.times do
    converter = string[x].ord
    strings_i_want.push(converter)
    x += 1
  end
  strings_i_want
end
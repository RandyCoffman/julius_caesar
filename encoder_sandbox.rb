require 'date'

class CaesarCipher
  def initialize(message, shift = DateTime.now.day)
    @message = message
    @shift = shift
  end
 
  def perform
    puts @message.tr("a-zA-Z", rotated_alphabet(@shift))
  end
 
  def rotated_alphabet(shift)
    lower = "a".upto("z").to_a.rotate(shift)
    upper = "A".upto("Z").to_a.rotate(shift)
 
    lower.concat(upper).join
  end
end
 
CaesarCipher.new(['kevin','bob','I am a llama','hello'].join(", "), 4).perform
CaesarCipher.new("Hello").perform
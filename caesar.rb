# User input for text and key
puts "Enter a text: "
txtOriginal = gets.chomp
puts "Enter a KEY (between 0 - 26): "
key = gets.chomp

# Encrypt function.
def caesar_cipher(txt, key)
  txtCiphered = ""

  txt.each_char do |ch|
    ascii = ch.ord
    if (ascii >= 65 && ascii <= 90)
      txtCiphered += ((ascii + key - 65) % 26 + 65).chr
    elsif (ascii >= 97 && ascii <= 122)
      txtCiphered += ((ascii + key - 97) % 26 + 97).chr
    else
      txtCiphered += ch
    end
  end

  return puts txtCiphered

end

caesar_cipher(txtOriginal, key.to_i)

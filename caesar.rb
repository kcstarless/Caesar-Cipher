# puts "Enter a text: "
# txtOriginal = gets.chomp

def caesar_cipher(txt, key)
  txtCiphered = ""

  txt.each_char do |ch|
    ascii = ch.ord
    if ascii >= 65 && ascii <= 90
      txtCiphered += (ascii - key).chr
    elsif ascii >= 97 && ascii <= 122
      txtCiphered += (ascii - key).chr
    else
      txtCiphered += (ascii - key).chr
    end
  end

  return txtCiphered

end

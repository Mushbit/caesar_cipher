def caesar_cipher_encrypt(input_string, rotations)

    alphabet = ("a".."z").to_a
    alphabet_capital = ("A".."Z").to_a
    rotated_alphabet = alphabet.rotate(rotations)
    rotated_alphabet_capital = alphabet_capital.rotate(rotations)
    
    input_string.split("").map do |character|
        if character.match(/[a-z]/)
            character = rotated_alphabet[alphabet.index(character)]
        elsif character.match(/[A-Z]/)
            character = rotated_alphabet_capital[alphabet_capital.index(character)]
        else
            character
        end
    end.join("")
    
end

puts "write here what youd like to encrypt."
input_string = gets.chomp
puts "And now how the encryption number"
rotations = gets.chomp.to_i
puts "Here is your encrypted sentence: #{caesar_cipher_encrypt(input_string, rotations)}"

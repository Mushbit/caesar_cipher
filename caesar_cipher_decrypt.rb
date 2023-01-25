def caesar_cipher_decrypt(input_string)
    
    alphabet = ("a".."z").to_a
    alphabet_capital = ("A".."Z").to_a
    
    
    for i in (0..26) do
        
        rotated_alphabet = alphabet.rotate(i)
        rotated_alphabet_capital = alphabet_capital.rotate(i)
        
        result = input_string.split("").map do |character|
            
            if character.match(/[a-z]/)
                character = rotated_alphabet[alphabet.index(character)]
            elsif character.match(/[A-Z]/)
                character = rotated_alphabet_capital[alphabet_capital.index(character)]
            else
                character
            end

        end.join("")
        
        puts "Result #{i}: #{result}"
        
    end
    
end


puts "Type out the encrypted message and press enter."
input_string = gets.chomp
caesar_cipher_decrypt(input_string)
puts "===> The decrypted message will be among them <==="
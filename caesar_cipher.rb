def caesar_cipher(input_string, rotations)

    alphabet = ("a".."z").to_a
    alphabet_capital = .("A".."Z").to_a
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

p caesar_cipher("Could I please have some GOD DAMN COLAAAAAA!!!", 5)
def caesar_cipher(str, places)

    # Special characters to be ignored
    special_characters = [' ', '!', ',', '.']

    # Seperate each later
    for i in 0...str.length do

        current_character = str[i]

        # Ignore the special character
        unless special_characters.include? current_character

            # Change alphanumeric character
            places.times do

                # Properly wrap alphabet for z characters
                if current_character == 'z'
                    current_charater = 'a'

                elsif current_character == 'Z'
                    current_character = 'A'

                else
                    current_character.next!
                end

            end #End of times do

            # The fully changed character replaces its old version in the original string
            str[i] = current_character

        end #End of unless

    end #End of for loop

    # Show new string
    puts str


end #End of method



caesar_cipher("What a string!", 5)

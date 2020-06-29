def shift_letters(string, number = 13)
    shifted_letters = ""
    string.each_byte do |char|
        shift = char + number
        code = 0
        char < 97 ? code = 65 : code = 97
        if(char >= 65 && char <= 90) || (char >= 97 && char <= 122) 
            shifted_letters += ((((shift - code) % 26 + 26) % 26) + code).chr
        else shifted_letters += char.chr
        end
    end
    return shifted_letters
end

# puts "Enter a string and a number (separate with two spaces and the string must not contain digits)"
# chr_to_shift = gets.chomp
# chr_to_shift = chr_to_shift.split(/\s\s/)
#     while chr_to_shift.first.split('').any?(/\d/)
#         puts "Please follow the instructions"
#         puts "Enter a string and a number (separate with two spaces and the string must not contain digits)"
#         chr_to_shift = gets.chomp
#         chr_to_shift = chr_to_shift.split(/\s\s/)
#     end 
#     string = chr_to_shift[0]
#     number = chr_to_shift[1].to_i
    puts shift_letters('My     birhday is on  the 17th!', 7)
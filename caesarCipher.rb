def shift_letters(string, number = 13)
    shifted_letters = ""
    string.each_byte do |char|
        shift = char + number
        code = 0
         if char < 97 then code = 65
         else code = 97
         end
         if(char >= 65 && char <= 90) || (char >= 97 && char <= 122) 
            shifted_letters += ((((shift - code) % 26 + 26) % 26) + code).chr
         else shifted_letters += char.chr
         end
    end
    print shifted_letters
    puts ''
end

puts "Enter a string and a number (separate with two spaces and the string must not contain digits)"
chr_to_shift = gets.chomp
chr_to_shift = chr_to_shift.split(/\s\s/)
if chr_to_shift.first.split('').any?(/\d/)
    while chr_to_shift.first.split('').any?(/\D/)
        puts "Please follow the instructions"
        puts "Enter a string and a number (separate with two spaces and the string must not contain digits)"
        chr_to_shift = gets.chomp
        chr_to_shift = chr_to_shift.split(/\s\s/)
        if(chr_to_shift.first.split('').all?(/\D/))
            string = chr_to_shift[0]
            number = chr_to_shift[1].to_i
            shift_letters(string, number)
         break
      end
    end
else 
    string = chr_to_shift[0]
    number = chr_to_shift[1].to_i
    shift_letters(string, number)
end
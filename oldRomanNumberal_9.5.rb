=begin
Old-school Roman numerals.
In the early days of Roman numerals, the Romans didn’t bother with any of
this new-fangled subtraction “IX” nonsense. No sir, it was straight addition,
biggest to littlest—so 9 was written “VIIII,” and so on. Write a method that
when passed an integer between 1 and 3000 (or so) returns a string containing
the proper old- school Roman numeral. In other words, old_roman_numeral 4
should return 'IIII'. Make sure to test your method on a bunch of different
numbers. Hint: Use the integer division and modulus methods on page 32.
For reference, these are the values of the letters used:
I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

=end

puts 'Enter a  number between 1 and 3000.'
input = gets.chomp.to_i

finalAnswer = Array.new


def find_RomanNumeral(num_Input, num_Divisor, letter_Roman)
  answer = Array.new
  if num_Input >= num_Divisor
    mult_times = num_Input/num_Divisor
    mult_times.times do
      answer.push(letter_Roman)
    end
  end
  return answer
end

valueLetterPair = [[1000,'M'],[500,'D'],[100,'C'],[50,'L'],[10,'X'],[5,'V'],[1,'I']]

for i in 0...valueLetterPair.length #0~6
  midAnswer = find_RomanNumeral(input,valueLetterPair[i][0],valueLetterPair[i][1])
  if midAnswer != []
    finalAnswer.push(midAnswer.join)
    input = input%valueLetterPair[i][0]
  end
end

puts finalAnswer.join


#
# midAnswer = find_RomanNumeral(input, 1000, 'M')
# if midAnswer != []
#   finalAnswer.push(midAnswer.join)
#   input = input%1000
# end
#
# midAnswer = find_RomanNumeral(input, 500, 'D')
# if midAnswer != []
#   finalAnswer.push(midAnswer.join)
#   input = input%500
# end
#
# midAnswer = find_RomanNumeral(input, 100, 'C')
# if midAnswer != []
#   finalAnswer.push(midAnswer.join)
#   input = input%100
# end
#
#
# midAnswer = find_RomanNumeral(input, 50, 'L')
# if midAnswer != []
#   finalAnswer.push(midAnswer.join)
#   input = input%50
# end
#
#
# midAnswer = find_RomanNumeral(input, 10, 'X')
# if midAnswer != []
#   finalAnswer.push(midAnswer.join)
#   input = input%10
# end
#
#
# midAnswer = find_RomanNumeral(input, 5, 'V')
# if midAnswer != []
#   finalAnswer.push(midAnswer.join)
#   input = input%5
# end
#
#
# midAnswer = find_RomanNumeral(input, 1, 'I')
# if midAnswer != []
#   finalAnswer.push(midAnswer.join)
#   input = input%1
# end

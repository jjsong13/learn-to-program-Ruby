=begin
Building and sorting an array.
Write the program we talked about at the beginning of this chapter,
one that asks us to type as many words as we want (one word per line,
continuing until we just press Enter on an empty line) and then repeats
the words back to us in alphabetical order. Make sure to test your program
thoroughly; for example, does hitting Enter on an empty line always
 exit your program? Even on the first line? And the second?
 Hint: There’s a lovely array method that will give you
 a sorted version of an array: sort. Use it!
=end

input_arr = Array.new

puts "Type as many words (one word per line) and
press Enter on an empty line once you're finished!"

input = gets.chomp
while true
  if input == ""
    #sort in alphabetical order
    #puts the sorted array
    puts "This is the input_arr: ", input_arr
    puts "This is the alphabetically sorted input_arr: ", input_arr.sort
    break
  else
    #add the new input string into array
    input_arr.push(input)
    input = gets.chomp
  end
end

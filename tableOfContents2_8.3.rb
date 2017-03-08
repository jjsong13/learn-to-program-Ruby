=begin
Table of contents, revisited.
Rewrite your table of contents program on page 32.
Start the program with an array holding all of the information for your table
of contents (chapter names, page numbers, and so on). Then print out
the information from the array in a beautifully formatted table of contents.
=end

line_width = 50

info_array = [['Chapter 1:','Getting Started','page 1'],['Chapter 2:','Numbers','page 9'],['Chapter 3:','Letters','page 13']]

puts('Table of Contents'.center(line_width))

info_array.each do |row|
  puts row[0].ljust(line_width/3) << row[1].center(line_width/3) << row[2].rjust(line_width/3)
end


puts "What is the starting year?"
yrStart = gets.chomp.to_i
puts "What is the ending year?"
yrEnd = gets.chomp.to_i

leapYrs = Array.new

yrTest = yrStart

while yrTest <= yrEnd
  if yrTest%4 == 0
    if yrTest%100 == 0 && yrTest%400 != 0
      #if yrTest is divisble by 100 but not 400, it's not a leap year
    elsif yrTest%100 == 0 && yrTest%400 == 0
      #if yrTest is divisble by both 100 and 400, it's a leap year
      leapYrs.push(yrTest)
    else
      #if yrTest is not divislbe by 100 but is divisble by 4, it's a leap year
      leapYrs.push(yrTest)
    end
  end
  yrTest = yrTest + 1
end

puts 'Leap years in between '+ yrStart.to_s + ' and ' + yrEnd.to_s + ' is: '
puts leapYrs

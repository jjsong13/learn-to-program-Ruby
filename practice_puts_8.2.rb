

foods = ['chocolate', 'cake', 'apple']

foods_array = [['apple', 'banana'],['chocolate','candy, ice-cream'],['beans','broccoli']]

#[][]
2.times do
  puts foods
end

#chocolate, cake, apple, chocolate, cake apple
2.times do
  puts foods.join(', ')
end


2.times do
  puts foods_array
end

2.times do
  puts foods_array.join(', ')
end

print "\e[5;36m"

initiate = gets

if initiate.to_i.between?(1800, 5000)
  puts initiate + "This is the year"
# # elsif initiate.chomp.downcase() == "january" || "febuary" || "march" || "april" || "may" || "june" || "july" || "august" || "september" || "october" || "november" || "december"
#   puts initiate + "This is the month"
else
  puts "something is wrong"
  exit
end



puts "Give me a year"
year = gets.to_i
puts "Give me a month"
month = gets.to_i
puts "Give me a day"
day = gets.to_i

print "\e[5;34m"
if month == 1
  month = 13
  year = year -1
elsif month == 2
  month = 14
  year = year -1
else
end


algorithm = (day + (((month + 1) *26)/10) + year + (year/4) + (6 * (year/100)) + (year/400))%7
print "\e[5;32m"





if algorithm == 0
  weekday = "Saturday"
elsif algorithm == 1
  weekday = "Sunday"
elsif algorithm == 2
  weekday = "Monday"
elsif algorithm == 3
  weekday = "Tuesday"
elsif algorithm == 4
  weekday = "Wednesday"
elsif algorithm == 5
  weekday = "Thursday"
elsif algorithm == 6
  weekday = "Friday"
else
  puts "\e[5;31m" "Error"
end

puts weekday















#This formula gets the input first reveived EX: 2009, or may 2009

initiate = gets.chomp

# It checks the length to see if it is a year or year and month.
# This is for assigning which is month and which is year.
if initiate.length() >= 5
  first, last = initiate.split(/ /)
  initiateMonth = first.chomp.to_s.downcase().capitalize()
  initiateYear = last.chomp

#This is for a year only, it checks to see if there are only 4 characters.
#If so it puts them as the year and the month as blank
elsif initiate.length() == 4
  initiateYear = initiate.chomp
  initiateMonth = ""

# Exits application if less than 4 characters
else
 exit
end



months = ["January","Febuary","March","April","May","June","July","August","September","October","November","December"]


if initiateYear.to_i.between?(1800, 5000)
  if months.include? initiateMonth

    month = months.index(initiateMonth) + 1
    outputYearAndMonth = initiateMonth +" "+ initiateYear
    puts outputYearAndMonth.center(20)
    puts "Su Mo Tu We Th Fr Sa "

  elsif initiateMonth == ""
    puts initiateYear.center(64)

    puts "Jan 1st starts on a "
    month = 1
  else
    exit
  end
else
  exit
end






year = initiateYear.to_i
month = month
day = 1


if month == 1
  month = 13
  year = year -1
elsif month == 2
  month = 14
  year = year -1
else
end

algorithm = (day + (((month + 1) *26)/10) + year + (year/4) + (6 * (year/100)) + (year/400))%7

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
  exit
end

# days = [
#           ["",
#           []
#           []
#           []
#           []
#         ]
# print days


puts weekday














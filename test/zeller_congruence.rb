class ZellerCongruence
  def self

    date.new = (1992-28-01)

    day = date.day
    month = date.month
    year = date.year

    (day + (month + 1 *26)/10 + year + (year/4) + 6 * (year/100) + (year/400))%7


  end
end
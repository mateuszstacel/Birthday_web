class Datee

DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def initialize(days_in_month = DAYS_IN_MONTH)

  @days_in_month = days_in_month
  @month = ''


end

def found_month(year)
  a = year.split('-')
   @month = @month << a[1.to_i]
end

 def days_check(month)
  DAYS_IN_MONTH[month.to_i]
end

end

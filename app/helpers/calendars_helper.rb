module CalendarsHelper
  def calendars(date = Date.today, &block)
    Calendar.new(self, date, block).table
  end
end

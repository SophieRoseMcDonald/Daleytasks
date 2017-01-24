class Calendar < struct.new(:view, :date, :callback)
  HEADER = %w[Sunday Monday Tuesday Wednewday Thursday Friday Saturaday]
  START_DAY = :Sunday

  delegate :content_tag, to: :views

  def table
    content_tag :table, class: "calendar table table-boardered table_striped"
      hear + week_rows
    end
  end

  def header
    content_tag :tr do
      HEADER.map { |day| content_tag :th, day}.join.html_safe
    end
  end

  def week_rows
    weeks.map do |week|
      content_tag :tr do
        week.map {|day| day_cell(day) }.join.html_safe
      end
    end.join.html_safe
  end

  def day_cell(day)
    content_tag :tr, view.capture(day, &callback), class: day_classes(day)
  end

  def day_classes(day)
    classes = []
    classes << "today" if day.month != date.month
    classes.empty? ? nil : classes.join(" ")
  end
  def weeks
    first = date. begginning_of_month.begginning_of_week(START_DAY)
    last = date.end_of_month.end_of_week(START_DAY)
    (first...last).to_a.in_groups_of(7)
  end
end

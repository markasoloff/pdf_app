class ReportPdf < Prawn::Document

  def initialize(student)
    super()
    @student = student
    text_content
  end

  def text_content
    text "#{@student["first"]} #{@student["last"]}", :align => :center, :size => 35
    move_down 10
    text "#{@student["email"]}            #{@student["phone"]}              Twitter: #{@student["twitter"]}", :align => :center, :size => 15
    stroke do
      move_down 5
      horizontal_rule
    end
    move_down 20
    text @student["bio"]
    move_down 20

    index = 50
    y_position = cursor - index
    text "Education", size: 20, style: :bold
    stroke do
      move_down 5
      horizontal_rule
    end
    @student["educations"].each do |school|

    bounding_box([0, y_position], :width => 400, :height => 30) do
      text school["university_name"], size: 15, style: :bold
      text school["degree"]
    end

    bounding_box([350, y_position], :width => 250, :height => 30) do
      move_down 3
      text "#{school["start_date"]} to #{school["end_date"]}"
    end

    index = index + 2

  end

  move_down 40

  index = 50
  y_position = cursor - index
  text "Work", size: 20, style: :bold
  stroke do
      move_down 10
      horizontal_rule
    end
  @student["experiences"].each do |job|

    bounding_box([0, y_position], :width => 400, :height => 30) do
      text "#{job["job_title"]}, #{job["company_name"]}", size: 15, style: :bold
      text job["details"]
    end

    bounding_box([350, y_position], :width => 250, :height => 30) do
      move_down 3
      text "#{job["start_time"]} to #{job["end_time"]}"
    end

    index = index + 2

    end

  end 

end
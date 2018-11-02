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
      move_down 10
      horizontal_rule
    end
    move_down 20
    text @student["bio"]
    move_down 20


    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    text "Education", size: 15, style: :bold
    index = 50
    2.times do 

    y_position = cursor - index

    bounding_box([0, y_position], :width => 200, :height => 30) do
      text "The University of Illinois", size: 15, style: :bold
      text "degree/major"
    end

    bounding_box([400, y_position], :width => 200, :height => 30) do
      move_down 3
      text "Dates"
    end

    index = index + 2

  end

  move_down 40

  text "Work", size: 15, style: :bold
  index = 60

  2.times do 

    y_position = cursor - index

    bounding_box([0, y_position], :width => 200, :height => 30) do
      text "Job", size: 15, style: :bold
      text "stuff I do"
    end

    bounding_box([400, y_position], :width => 200, :height => 30) do
      move_down 3
      text "Dates"
    end

    index = index + 2

  end

  end

  

end
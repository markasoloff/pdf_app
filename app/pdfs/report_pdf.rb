class ReportPdf < Prawn::Document

  def initialize(student)
    super()
    @student = student
    text_content
  end

  def text_content
    text @student["name"], :align => :center, :size => 25
    move_down 10
    text "(555)555-5555, jortals@jortals.com, @jortals", :align => :center, :size => 15
    move_down 10
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 50

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 550, :height => 300) do
      text "Professional Summary", :align => :center, :size => 15
      move_down 10
      text "I'm looking for a job that really uses all kinds of stuff that I know because I'm pretty smart and people have paid me for things that I've done in the past, every two weeks, they paid me for things that I have done and said in the past. This is why I feel qualified to having this continue to be my reality. Please let me know how you feel about me. Thank you."
    end

    # bounding_box([300, y_position], :width => 270, :height => 300) do
    #   text "Duis vel", size: 15, style: :bold
    #   text "Duis vel tortor elementum, ultrices tortor vel, accumsan dui. Nullam in dolor rutrum, gravida turpis eu, vestibulum lectus. Pellentesque aliquet dignissim justo ut fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis massa non eros venenatis aliquet. Suspendisse potenti. Mauris sed tincidunt mauris, et vulputate risus. Aliquam eget nibh at erat dignissim aliquam non et risus. Fusce mattis neque id diam pulvinar, fermentum luctus enim porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
    # end

  end

  

end
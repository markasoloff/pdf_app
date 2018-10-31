class ReportPdf < Prawn::Document

  def initialize(student)
    super()
    @student = student
    text_content
  end

  def text_content
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 50

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270, :height => 300) do
      text "Lorem ipsum", size: 15, style: :bold
      @student
    end

    bounding_box([300, y_position], :width => 270, :height => 300) do
      text "Duis vel", size: 15, style: :bold
      text "Duis vel tortor elementum, ultrices tortor vel, accumsan dui. Nullam in dolor rutrum, gravida turpis eu, vestibulum lectus. Pellentesque aliquet dignissim justo ut fringilla. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut venenatis massa non eros venenatis aliquet. Suspendisse potenti. Mauris sed tincidunt mauris, et vulputate risus. Aliquam eget nibh at erat dignissim aliquam non et risus. Fusce mattis neque id diam pulvinar, fermentum luctus enim porttitor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."
    end

  end

end
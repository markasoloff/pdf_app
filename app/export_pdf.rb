class ExportPdf < Prawn::Document
  # include Prawn::View

  def initialize
    content
  end

  def content
    text "Hello World!"
    # // here comes more code for generating PDF content
    # // ...
  end
end




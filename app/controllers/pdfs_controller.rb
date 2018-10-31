class PdfsController < ApplicationController
  def show
    @student = { "name" => "Marrrrk", "number" => "555-555-5555"}

    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportPdf.new(@student)
        send_data pdf.render,
          filename: "export.pdf",
          type: 'application/pdf',
          disposition: 'inline'
      end
    end

  end
end
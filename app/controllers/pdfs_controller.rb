class PdfsController < ApplicationController
  def show
    response = HTTP.get("https://blooming-caverns-85738.herokuapp.com/api/students/#{params[:id]}")
    @student = response.parse

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
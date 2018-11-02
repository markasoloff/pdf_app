class PdfsController < ApplicationController
  def show
    response = HTTP.get("http://localhost:3000/api/students/#{params[:id]}")
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
class PdfsController < ApplicationController
  def show
    response = HTTP.get("http://localhost:3000/api/products/#{params[:id]}")
    @student = response.parse
  end
    
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
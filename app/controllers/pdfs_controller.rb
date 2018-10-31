class PdfsController < ApplicationController
  def show
    @student = {"Mark"}

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
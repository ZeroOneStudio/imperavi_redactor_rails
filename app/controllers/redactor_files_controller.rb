class RedactorFilesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :json

  def create
    @redactor_file = RedactorFile.new(file: params[:file])
    
    if @redactor_file.save
      render text: "{\"filelink\":\"#{@redactor_file.file.url}\", \"filename\":\"#{params[:file].original_filename}\"}"
    else
      render json: @redactor_file.errors
    end
  end
end
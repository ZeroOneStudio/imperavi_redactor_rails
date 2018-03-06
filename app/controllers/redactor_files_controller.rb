class RedactorFilesController < ApplicationController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def index
    @redactor_files = RedactorFile.limit(30).reverse_order
    render json: @redactor_files.to_json
  end

  def create
    @redactor_file = RedactorFile.new(file: params[:file])
    
    if @redactor_file.save
      render text: @redactor_file.to_json
    else
      render json: @redactor_file.errors
    end
  end
end

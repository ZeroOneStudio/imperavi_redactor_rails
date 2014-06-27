class RedactorImagesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  respond_to :json 

  def index
    @redactor_images = RedactorImage.limit(30).reverse_order
    render json: @redactor_images.map { |image| { 'thumb' => image.image.url(:normal), 'image' => image.image.url } }
  end

  def create
    @redactor_image = RedactorImage.new(image: params[:file])
    
    if @redactor_image.save
      render text: "{\"filelink\":\"#{@redactor_image.image.url}\"}"
    else
      render json: @redactor_image.errors
    end
  end

  def create_from_clipboard
    @redactor_image = RedactorImage.new_from_clipboard(params[:data])
    
    if @redactor_image.save
      render text: "{\"filelink\":\"#{@redactor_image.image.url}\"}"
    else
      render json: @redactor_image.errors
    end
  end
end
# -*- encoding : utf-8 -*-

class RedactorImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "#{Rails.env}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process convert: :jpg

  version :normal do
    process resize_to_fit: [200, 200]
  end
  
  def extension_white_list
    %w(jpg jpeg png)
  end

  def filename
    "image.jpg" if original_filename
  end
end
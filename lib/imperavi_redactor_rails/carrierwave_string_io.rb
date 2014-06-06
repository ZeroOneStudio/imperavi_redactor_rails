class ImperaviRedactorRails::CarrierwaveStringIO < StringIO
  def original_filename
    "image.jpg"
  end

  def content_type
    "image/jpeg"
  end
end
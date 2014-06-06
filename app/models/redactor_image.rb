class RedactorImage < ActiveRecord::Base
  mount_uploader :image, RedactorImageUploader

  def self.new_from_clipboard data
    io = ImperaviRedactorRails::CarrierwaveStringIO.new(Base64.decode64(data))
    new(image: io)
  end  
end
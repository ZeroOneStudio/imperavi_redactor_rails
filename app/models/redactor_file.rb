class RedactorFile < ActiveRecord::Base
  mount_uploader :file, RedactorFileUploader
end
class RedactorFile < ActiveRecord::Base
  attr_writer :name

  mount_uploader :file, RedactorFileUploader

  def title
    File.basename(file.path)
  end
  alias :name :title

  def link
    file.url
  end

  def size
    file.size.to_filesize
  end

  def as_json options = {}
    super(only: [], methods: [:title, :name, :link, :size])
  end
end
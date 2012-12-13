class Model < ActiveRecord::Base
  attr_accessible :available, :description, :name, :size, :tip, :brend_id, :photo

  belongs_to :brend
  
  mount_uploader :photo, ImageUploader
  

end

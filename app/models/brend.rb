class Brend < ActiveRecord::Base
  attr_accessible :name, :photo

  has_many :models
  
  mount_uploader :photo, ImageUploader
  

end

class Model < ActiveRecord::Base
  attr_accessible :available, :description, :name, :size, :tip, :brend_id

  belongs_to :brend

end

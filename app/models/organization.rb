class Organization < ActiveRecord::Base
  validates :name, presense: true
  
end

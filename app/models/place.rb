class Place < ActiveRecord::Base
     paginates_per 3
     
     belongs_to :user
     
     geocoded_by :address
     after_validation :geocode
  
     validates :description, :address, presence: true
     validates :name, length: { minimum: 3 }, presence: true
     
     
end

class Place < ActiveRecord::Base
     paginates_per 3
     
     belongs_to :user
     has_many :comments
     
     geocoded_by :address
     after_validation :geocode
  
     validates :description, :address, presence: true
     validates :name, length: { minimum: 3 }, presence: true

end

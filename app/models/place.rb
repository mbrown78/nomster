class Place < ActiveRecord::Base
     paginates_per 3
     
     belongs_to :user
     validates :description, :address, presence: true
     validates :name, length: { minimum: 3 }, presence: true
end

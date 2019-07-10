class Place < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :photos
	belongs_to :place

	geocoded_by :address
  	after_validation :geocode

	validates :name, :address, :description, presence: true
	validates :name, length: { minimum: 3 }
end

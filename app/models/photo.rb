class Photo < ApplicationRecord
	belongs_to :place
	has_many :photos
	belongs_to :user

	mount_uploader :picture, PictureUploader
end

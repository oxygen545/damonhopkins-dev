class Photo < ApplicationRecord
	has_one_attached :image
	validates :page_name, presence: true
	validates :image, presence: true
	validates :sequence, numericality: { only_integer: true }
end
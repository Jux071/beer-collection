class Beer < ApplicationRecord
	belongs_to :brewery
	belongs_to :country
	belongs_to :style

	has_attached_file :image, styles: { large: "450x450>", medium: "250x250>", thumb: "50x50>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
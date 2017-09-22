class Country < ApplicationRecord
	has_many :beers

	#has_attached_file :image, styles: { large: "400x400>", medium: "250x250>", thumb: "25x25#" }
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
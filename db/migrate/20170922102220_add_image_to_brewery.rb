class AddImageToBrewery < ActiveRecord::Migration[5.1]
  def change
  	add_column :breweries, :image, :string
  end
end

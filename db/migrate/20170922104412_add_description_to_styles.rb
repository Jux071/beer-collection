class AddDescriptionToStyles < ActiveRecord::Migration[5.1]
  def change
  	add_column :styles, :descriptions, :text
  end
end

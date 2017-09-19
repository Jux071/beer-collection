class AddStylesReferenceToBeer < ActiveRecord::Migration[5.1]
  def change
  	add_reference :beers, :style, foreign_key: true, index:true
  end
end

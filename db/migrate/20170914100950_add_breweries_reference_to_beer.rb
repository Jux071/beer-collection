class AddBreweriesReferenceToBeer < ActiveRecord::Migration[5.1]
  def change
  	add_reference :beers, :brewery, foreign_key: true, index:true
  end
end

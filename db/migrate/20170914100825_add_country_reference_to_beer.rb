class AddCountryReferenceToBeer < ActiveRecord::Migration[5.1]
  def change
  	add_reference :beers, :country, foreign_key: true, index:true
  end
end

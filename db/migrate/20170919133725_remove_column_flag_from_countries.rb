class RemoveColumnFlagFromCountries < ActiveRecord::Migration[5.1]
  def change
  	remove_column :countries, :flag
  end
end

class AddColumnToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :restaurant_introduction, :text
  end
end

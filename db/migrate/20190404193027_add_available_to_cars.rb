class AddAvailableToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :available, :boolean
  end
end

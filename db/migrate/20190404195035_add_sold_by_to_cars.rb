class AddSoldByToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :sold_by, :integer
  end
end

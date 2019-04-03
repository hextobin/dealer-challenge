class AddListPriceToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :list_price, :integer
  end
end

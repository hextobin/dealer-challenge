class AddSalePriceToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :sale_price, :integer
  end
end

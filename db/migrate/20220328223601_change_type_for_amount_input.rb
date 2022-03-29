class ChangeTypeForAmountInput < ActiveRecord::Migration[7.0]
  def change 
    change_column :transactions, :amount_input, :float
  end
end

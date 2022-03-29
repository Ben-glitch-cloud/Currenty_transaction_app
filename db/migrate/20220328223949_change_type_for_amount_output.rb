class ChangeTypeForAmountOutput < ActiveRecord::Migration[7.0]
  def change 
    change_column :transactions, :amount_output, :float
  end
end

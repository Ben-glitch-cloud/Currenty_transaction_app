class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :customer_id
      t.string :currency_input
      t.integer :amount_input
      t.string :currency_output
      t.integer :amount_output

      t.timestamps
    end
  end
end

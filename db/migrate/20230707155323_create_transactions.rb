class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :merchant_name
      t.string :trx_type
      t.string :category
      t.timestamps
    end
  end
end

class RemoveTrxTypeFromTransaction < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :trx_type
  end
end

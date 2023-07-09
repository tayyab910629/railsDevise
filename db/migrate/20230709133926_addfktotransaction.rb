class Addfktotransaction < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :transactions, :users
    add_foreign_key :transactions, :users, on_delete: :cascade

  end
end

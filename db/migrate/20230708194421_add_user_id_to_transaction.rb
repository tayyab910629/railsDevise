class AddUserIdToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_reference :transactions, :user, foreign_key: true
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end

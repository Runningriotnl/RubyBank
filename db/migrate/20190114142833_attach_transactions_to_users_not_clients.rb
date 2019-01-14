class AttachTransactionsToUsersNotClients < ActiveRecord::Migration[5.2]
  def change
  	rename_column :transactions, :client_id, :user_id
  end
end

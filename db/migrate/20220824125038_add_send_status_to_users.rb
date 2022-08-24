class AddSendStatusToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :send_status, :boolean, default: true
    add_column :users, :message_count, :integer, default: 0
  end
end

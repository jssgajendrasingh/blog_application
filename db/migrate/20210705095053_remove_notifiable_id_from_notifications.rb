class RemoveNotifiableIdFromNotifications < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :notifiable_id, :integer
  end
end

class RemoveNotifiableTypeAndNotifiableIdFromNotifications < ActiveRecord::Migration[5.2]
  def change
    remove_column :notifications, :notifiable_type, :string
  end
end

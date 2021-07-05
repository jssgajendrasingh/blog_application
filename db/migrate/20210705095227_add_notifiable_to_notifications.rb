class AddNotifiableToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_reference :notifications, :Notifiable, polymorphic: true
  end
end

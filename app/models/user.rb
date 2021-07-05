class User < ApplicationRecord
	has_secure_password
	has_many :articles
	after_create_commit :log_user_saved_to_db
  after_update_commit :log_user_update_to_db

  private
  def log_user_saved_to_db
  	puts 'User was saved to database'
  end
  def log_user_update_to_db
  	puts 'User was Update to database'
  end	
end

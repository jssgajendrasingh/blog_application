class Comment < ApplicationRecord
	belongs_to :article 
	has_many :notifications, as: :notifiable
end

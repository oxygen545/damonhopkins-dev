class Message < ApplicationRecord
	validates :username, presence: true
	validates :email, presence: true
	validates :subject, presence: true
	validates :body, presence: true
end

class User < ApplicationRecord
  has_secure_password
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true
  validates :mail_address, presence: true
  validates :mail_address, format: { with: VALID_EMAIL_REGEX }
end

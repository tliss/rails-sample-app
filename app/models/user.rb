class User < ApplicationRecord
  # This is the same as self.email = self.email.downcase - which is the same as self.email = email.downcase
  before_save { email.downcase! }
  #This is the same as validates(:name, {presence: true})
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
end

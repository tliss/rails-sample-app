class User < ApplicationRecord
  #This is the same as validates(:name, {presence: true})
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
end

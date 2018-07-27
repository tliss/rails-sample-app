class User < ApplicationRecord
  #This is the same as validates(:name, {presence: true})
  validates :name, presence: true

  validates :email, presence: true
end

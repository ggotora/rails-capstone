class User < ApplicationRecord
  validates_uniqueness_of :username, on: :create, message: 'must be unique'
  validates :username, :full_name, presence: true

  has_one_attached :image
end

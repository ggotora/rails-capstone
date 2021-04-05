class User < ApplicationRecord
  validates_uniqueness_of :username, on: :create, message: 'must be unique'
  validates :username, :full_name, presence: true

  has_one_attached :image

  has_many :active_followings, class_name: 'Following', foreign_key: 'follower_id',
                               dependent: :destroy
  has_many :passive_followings, class_name: 'Following', foreign_key: 'followed_id',
                                dependent: :destroy

  has_many :following, through: :active_followings, source: :followed
  has_many :followers, through: :passive_followings, source: :follower

  def follow(user)
    active_followings.create(followed_id: user.id)
  end

  def unfollow(user)
    active_followings.find_by(followed_id: user.id).destroy
  end

  def following?(user)
    following.include?(user)
  end
end

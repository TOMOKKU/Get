class User < ApplicationRecord
  has_secure_password

  has_many :group_users
  has_many :groups, through: :groups_users
  
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}

  def posts
    return Post.where(user_id:self.id)
  end

  def self.search(keyword)
    where(["name like ?","%#{keyword}%"])
  end

end

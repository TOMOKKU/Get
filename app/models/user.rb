class User < ApplicationRecord
  has_secure_password

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  def posts
    return Post.where(user_id:self.id)
  end
  def self.search(keyword)
    where(["name like ?","%#{keyword}%"])
  end
end

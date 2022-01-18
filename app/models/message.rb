class Message < ApplicationRecord
  belongs_to :group
  belongs_to :users

  validates :content, presence: true, unless: :image?
end

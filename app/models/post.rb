class Post < ApplicationRecord
  belongs_to :user
  validates :caption, presence: true, length: { maximum: 300 }

  has_one_attached :image
end

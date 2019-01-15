class Post < ApplicationRecord
  belongs_to :user
  validates :caption, presence: true, length: { maximum: 500 }

  has_one_attached :image
  validates :image, presence: true
end

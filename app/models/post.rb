class Post < ApplicationRecord
  belongs_to :user
  validates :caption, presence: true, length: { maximum: 500 }

  has_one_attached :image
  validates :image, presence: true, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..2.megabytes }
end

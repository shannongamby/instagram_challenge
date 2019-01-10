class Post < ApplicationRecord
  belongs_to :user
  validates :caption, presence: true, length: { maximum: 300 }
end

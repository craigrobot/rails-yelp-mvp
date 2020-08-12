class Review < ApplicationRecord
  # A review must have a parent restaurant.
  belongs_to :restaurant
  # A review must have content and a rating. The rating should be a number between 0 and 5.
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  # When a restaurant is destroyed, all of its reviews should be destroyed as well.
end

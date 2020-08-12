class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # A restaurant must have at least a name, an address and a category.
  validates :name, :category, :phone_number, presence: true
  validates :address, presence: true
  # The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end

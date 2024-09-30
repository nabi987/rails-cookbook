class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories, through: :bookmarks
  validates :description, :name, presence: true
  validates :name, uniqueness: true
  validates :rating, inclusion: { in: 0..10 }
end

class Listing < ActiveRecord::Base
  has_one_attached :image
  validates :image, :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end

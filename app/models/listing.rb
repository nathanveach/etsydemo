class Listing < ActiveRecord::Base
  has_one_attached :image
  validates :image, presence: true
end

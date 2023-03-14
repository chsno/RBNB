class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :address, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :rooms, presence: true
end

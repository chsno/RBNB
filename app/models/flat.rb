class Flat < ApplicationRecord
  belongs_to :user
  validates :address, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :rooms, presence: true
end

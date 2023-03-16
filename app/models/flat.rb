class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :address, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :rooms, presence: true
  # geocode stuff
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_city_and_rooms,
    against: [ :city, :rooms ],
    using: {
      tsearch: { prefix: true }
    }
end

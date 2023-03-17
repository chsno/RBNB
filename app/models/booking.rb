class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :user_id, presence: true
  validates :flat_id, presence: true
end

class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  #has_many :users, through: :bookings
  has_many :booked_users, through: :bookings, source: :user
  mount_uploader :photo, PhotoUploader
end

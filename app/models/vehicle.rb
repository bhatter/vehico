class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  mount_uploader :photo, PhotoUploader
  validates :photo, :description, :city, :price_day, :category, :title, presence: true
end

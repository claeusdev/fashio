class Store < ApplicationRecord
  belongs_to :user
  has_many :products

  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
end

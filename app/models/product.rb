class Product < ApplicationRecord

  belongs_to :store
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :name, use: :slugged
end

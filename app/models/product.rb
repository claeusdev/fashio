class Product < ApplicationRecord

  belongs_to :store
  mount_uploader :image, ImageUploader
  has_many :reviews, dependent: :destroy
  
  extend FriendlyId
  friendly_id :name, use: :slugged
end

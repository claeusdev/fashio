class Product < ApplicationRecord

  belongs_to :store
  mount_uploader :image, ImageUploader
end

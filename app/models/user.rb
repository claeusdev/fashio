class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

 has_one :store, dependent: :destroy
 has_many :products, through: :store,  dependent: :destroy
 has_many :reviews, dependent: :destroy
 
 mount_uploader :image, ImageUploader
end

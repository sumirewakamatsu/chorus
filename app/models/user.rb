class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :confirmable,
         :recoverable, 
         :rememberable,
         :trackable, 
         :validatable
       


         has_many :chorus, dependent: :destroy
         validates :name, presence: true
         validates :profile, length: { maximum: 200 }
         mount_uploader :image, ImageUploader         
end

class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :image, :description, :user_id
  mount_uploader :image, ImageUploader
end

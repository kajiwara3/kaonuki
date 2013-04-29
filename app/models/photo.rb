class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :image, :description
end

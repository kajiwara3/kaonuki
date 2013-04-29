class Photo < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :path, :discription
end

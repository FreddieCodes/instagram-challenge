class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable
  mount_uploader :attachment, AvatarUploader
  validates :attachment, :presence => true
end

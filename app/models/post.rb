class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable

  mount_uploader :file, PictureUploader

  scope :show, -> { where(state: :show) }
end

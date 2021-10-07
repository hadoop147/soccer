class Pitch < ApplicationRecord
    has_many :comments
    mount_uploader :image, PictureUploader
end

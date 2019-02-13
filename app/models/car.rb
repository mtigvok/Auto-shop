class Car < ApplicationRecord
  mount_uploaders :photos, PictureUploader
  serialize :photos, JSON

       has_many :comments
end

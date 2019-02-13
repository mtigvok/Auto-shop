class Car < ApplicationRecord
  mount_uploaders :photos, PictureUploader
  serialize :photos, JSON
end

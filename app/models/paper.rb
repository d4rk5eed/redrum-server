class Paper < ApplicationRecord
  mount_uploader :image, NewsImageUploader
end

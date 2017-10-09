require 'carrierwave/orm/activerecord'
class News < ApplicationRecord
  mount_uploader :image, NewsImageUploader
end

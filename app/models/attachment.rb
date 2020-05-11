class Attachment < ApplicationRecord
  has_many_attached :images
end
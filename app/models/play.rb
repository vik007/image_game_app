class Play < ApplicationRecord
  validates_presence_of :image_url, :timer_value
end
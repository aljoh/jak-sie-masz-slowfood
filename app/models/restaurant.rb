class Restaurant < ApplicationRecord
  validates :name, :city, :post_code, :street_address, presence: true
end

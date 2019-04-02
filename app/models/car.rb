class Car < ApplicationRecord
  validates :vin, uniqueness: true
end

# model car
class Car < ApplicationRecord
  belongs_to :maker

  validates :customer_name, :phone, :address, :name, :car_type, :model, :model, :color, :price, presence: true
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :chef_name, uniqueness: true
end

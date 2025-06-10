class Part < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :title, presence: true
end

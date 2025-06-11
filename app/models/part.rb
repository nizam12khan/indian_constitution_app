class Part < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :title, presence: true

  has_many :articles, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
end

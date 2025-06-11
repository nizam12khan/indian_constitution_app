class Article < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :content, presence: true

  belongs_to :part
  has_many :comments, as: :commentable, dependent: :destroy
end

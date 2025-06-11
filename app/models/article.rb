class Article < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :content, presence: true

  belongs_to :part
end

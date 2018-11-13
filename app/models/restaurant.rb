class Restaurant < ApplicationRecord
  CATAGORIES = ["italian", "french", "japanese", "chinese", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: {in: CATAGORIES}
end

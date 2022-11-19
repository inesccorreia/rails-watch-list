class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, uniqueness: true, presence: true
end

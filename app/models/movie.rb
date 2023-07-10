class Movie < ApplicationRecord
  default_scope -> { order(average_stars: :desc) }

  validates :title, presence: true

  has_many :reviews
end

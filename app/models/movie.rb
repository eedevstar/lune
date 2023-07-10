class Movie < ApplicationRecord
  default_scope -> { order(average_stars: :desc) }

  has_many :reviews
end

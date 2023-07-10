class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  after_save :update_movie_average_stars

  private

  def update_movie_average_stars
    average_stars = movie.reviews.average(:stars).to_f.round(2)
    movie.update(average_stars: average_stars)
  end
  
end

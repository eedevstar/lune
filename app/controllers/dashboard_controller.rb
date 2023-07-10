class DashboardController < ApplicationController
  def index
    @movies = Movie.includes(:reviews)

    if params[:actor].present?
      @movies = @movies.where("actor ilike ?", "%#{params[:actor]}%")
    end
    
  end
end

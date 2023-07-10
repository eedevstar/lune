class DashboardController < ApplicationController
  def index
    @movies = Movie.includes(:reviews)

    if params[:actor].present?
      @movies = @movies.where("actor ilike ?", "%#{params[:actor]}%")
    end

    @movies = @movies.paginate(page: params[:page], per_page: 1)  # 10 movies per page
  end
end

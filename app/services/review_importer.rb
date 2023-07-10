require 'csv'

class ReviewImporter
  def initialize(file)
    @file = file
  end

  def call
    ActiveRecord::Base.transaction do
      CSV.foreach(@file, headers: true) do |row|
        # user = User.find_or_create_by(name: row['User'])
        user_email = row['User'].gsub(' ', '').downcase
        user = User.find_or_create_by(email: "#{user_email}@example.com") do |user|
          user.fullname = row['User']
          user.password = 'password'
          user.password_confirmation = 'password'
        end
        movie = Movie.find_by(title: row['Movie'])
        Review.create!(user: user, movie: movie, stars: row['Stars'], review: row['Review'])
      end
    end
  end
end
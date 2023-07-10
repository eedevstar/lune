namespace :import do
  desc 'Import movies from a CSV file'
  task movies: :environment do
    MovieImporter.new('db/seeds/movies.csv').call
  end

  desc 'Import reviews from a CSV file'
  task reviews: :environment do
    ReviewImporter.new('db/seeds/reviews.csv').call
  end
end
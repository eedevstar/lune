require 'csv'

class MovieImporter
  def initialize(file)
    @file = file
  end

  def call
    ActiveRecord::Base.transaction do
      CSV.foreach(@file, headers: true) do |row|
        movie = Movie.find_or_create_by(title: row['Movie']) do |m|
          m.description = row['Description']
          m.year = row['Year']
          m.director = row['Director']
          m.actor = row['Actor']
          m.filming_location = row['Filming location']
          m.country = row['Country']
        end
      end
    end
  end
end
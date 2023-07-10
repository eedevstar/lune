# Lune - Assessment

## Requirements

1. Create a new application with Ruby on Rails

2. Study the content of movies.csv and reviews.csv

3. Define a database schema and add it to your application

4. Write an import task to import both CSV-files

5. Show an overview of all movies in your application

6. Make a search form to search for an actor

7. Sort the overview by average stars (rating) in an efficient way

**Design CSV importer/application for heavy data processing 

## Implementation

- Add Devise Gem for User
- Created Migrations for Movie & Review
- Add movie_importer & review_importer file in services
- Add import code in seeds.rb in db folder, and also import.rake in lib/tasks folder
- Add dashboard view & reviews view page
- Add Will_Pagination gem for Pagination
- Add Rspec for testing
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

## How to Design importer for heavy data processing
Designing a CSV importer for heavy data processing can be challenging due to issues like memory management, error handling, progress tracking, and data validation.

1. Reading the CSV file: You should read the file in chunks to avoid loading the entire file into memory, which could lead to out-of-memory errors for very large files. You can use the CSV#foreach or CSV#readlines method to read the file line by line or in batches.

2. Parallel Processing: Utilize parallel processing for data import to speed up the process and utilize the system resources effectively. This could be achieved using threads or gems like Parallel that facilitate the use of multiple processors.

3. Batch Processing: You should use batch processing to group the import operations, which reduces the number of database hits and can significantly improve performance. You can use the activerecord-import gem to perform batch imports.

4. Background Jobs: Heavy data processing tasks should ideally be run in the background to avoid blocking the main application thread and to provide a better user experience. You can use background job processors like Sidekiq or Resque for this.
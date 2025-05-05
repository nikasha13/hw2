# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Studio.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# generated in terminal using the following code: 
# rails generate model Movie
# rails generate model Studio
# rails generate model Actor
# rails generate model Role

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
new_movie = Movie.new
puts new_movie.inspect
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = "2005"
new_movie["rating"]= "PG-13"
new_movie["studio"] = "Warner Bros."
new_movie.save

new_movie = Movie.new
puts new_movie.inspect
new_movie["title"] = "The Dark Knight"
new_movie["year_released"] = "2008"
new_movie["rating"]= "PG-13"
new_movie["studio"] = "Warner Bros."
new_movie.save

new_movie = Movie.new
puts new_movie.inspect
new_movie["title"] = "The Dark Knight Rises"
new_movie["year_released"] = "2012"
new_movie["rating"]= "PG-13"
new_movie["studio"] = "Warner Bros."
new_movie.save

no_of_movies = Movie.all.count
p no_of_movies

new_studio = Studio.new
puts new_studio.inspect
new_studio["name"] = "Warner Bros."
new_studio.save
p new_studio

no_of_studios = Studio.all.count
p no_of_studios

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Michael Cane"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Liam Neeson"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Katie Holmes"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Gary Oldman"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Heath Ledger"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Aaron Eckhart"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Maggie Gyllenhaal"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Tom Hardy"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Joseph Gordon-Levitt"
new_actor.save

new_actor = Actor.new
puts new_actor.inspect
new_actor["name"] = "Anne Hathaway"
new_actor.save

no_of_actors = Actor.all.count
p no_of_actors

bale = Actor.find_by({"name"=> "Christian Bale"})
cane = Actor.find_by({"name"=> "Michael Cane"})
neeson = Actor.find_by({"name"=> "Liam Neeson"})
holmes = Actor.find_by({"name"=> "Katie Holmes"})
oldman = Actor.find_by({"name"=> "Gary Oldman"})
ledger = Actor.find_by({"name"=> "Heath Ledger"})
eckhart = Actor.find_by({"name"=> "Aaron Eckhart"})
gyllenhaal = Actor.find_by({"name"=> "Maggie Gyllenhaal"})
hardy = Actor.find_by({"name"=> "Tom Hardy"})
levitt = Actor.find_by({"name"=> "Joseph Gordon-Levitt"})
hathaway = Actor.find_by({"name"=> "Anne Hathaway"})
batmanbegins = Movie.find_by("title"=> "Batman Begins")
darkknight = Movie.find_by("title"=> "The Dark Knight")
darknightrises = Movie.find_by("title"=> "The Dark Knight Rises")

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Bruce Wayne"
new_role["movie_id"] = batmanbegins["id"]
new_role["actor_id"] = bale["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Alfred"
new_role["movie_id"] = batmanbegins["id"]
new_role["actor_id"] = cane["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Ra's Al Ghul"
new_role["movie_id"] = batmanbegins["id"]
new_role["actor_id"] = neeson["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Rachel Dawes"
new_role["movie_id"] = batmanbegins["id"]
new_role["actor_id"] = holmes["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Commissioner Gordon"
new_role["movie_id"] = batmanbegins["id"]
new_role["actor_id"] = oldman["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Bruce Wayne"
new_role["movie_id"] = darkknight["id"]
new_role["actor_id"] = bale["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Joker"
new_role["movie_id"] = darkknight["id"]
new_role["actor_id"] = ledger["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Harvey Dent"
new_role["movie_id"] = darkknight["id"]
new_role["actor_id"] = eckhart["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Alfred"
new_role["movie_id"] = darkknight["id"]
new_role["actor_id"] = cane["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Rachel Dawes"
new_role["movie_id"] = darkknight["id"]
new_role["actor_id"] = gyllenhaal["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Bruce Wayne"
new_role["movie_id"] = darknightrises["id"]
new_role["actor_id"] = bale["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Commissioner Gordon"
new_role["movie_id"] = darknightrises["id"]
new_role["actor_id"] = oldman["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Bane"
new_role["movie_id"] = darknightrises["id"]
new_role["actor_id"] = hardy["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "John Blake"
new_role["movie_id"] = darknightrises["id"]
new_role["actor_id"] = levitt["id"]
new_role.save

new_role = Role.new
puts new_role.inspect
new_role["character_name"] = "Selina Kyle"
new_role["movie_id"] = darknightrises["id"]
new_role["actor_id"] = hathaway["id"]
new_role.save

no_of_roles = Role.all.count
p no_of_roles

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!
movies = Movie.all
for movie in movies
    title = movie["title"]
    year = movie["year_released"]
    studio = movie["studio"]
    rating = movie["rating"]
    puts "#{title} #{year} #{rating} #{studio}"
end


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
roles = Role.all
for role in roles
    movie = Movie.find_by({"id"=> role["movie_id"]})
    movie_title = movie["title"]
    actor = Actor.find_by({"id"=> role["actor_id"]})
    actor_name = actor["name"]
    character = role["character_name"]
    puts "#{movie_title} #{actor_name} #{character}"
end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
require 'indian_constitution'

puts "Seeding parts and articles..."
IndianConstitution.parts.each do |part|
  puts "Processing Part #{part.number}: #{part.title}"
  db_part = Part.find_or_create_by!(number: part.number) do |p|
    p.title = part.title
  end
  puts "Part created/found with ID: #{db_part.id}"
  part.articles.each do |article|
    puts "  Seeding Article #{article.number}: #{article.title}"
    Article.find_or_create_by!(number: article.number) do |a|
      a.title = article.title
      a.content = article.content
      a.part = db_part
    end
  end
end
puts "Seeding complete!"
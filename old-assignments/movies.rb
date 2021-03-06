movies = []

movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

# movies with budgets less than 100
budget_list = movies.select{ |budget| (budget[:budget] < 100)}
budget_list = budget_list.map{|explicit| (explicit [:title])}

#movies with Leonardo DiCaprio as a star
leonardo_mov = movies.select{|leo| (leo[:stars].include? "Leonardo DiCaprio")}
leonardo_mov = leonardo_mov.map {|specific| (specific [:title])}

puts "\n\n"
print movies
puts "\n\n"
print budget_list
puts "\n\n"
print leonardo_mov
puts "\n\n"

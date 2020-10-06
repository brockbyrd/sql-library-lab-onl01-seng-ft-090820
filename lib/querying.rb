def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, year FROM books INNER JOIN series ON Series.id = Books.series_id WHERE series.id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY motto LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(*) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT name, subgenres.name
    FROM authors
    INNER JOIN series ON Authors.id = Series.author_id
    INNER JOIN subgenres ON Subgenres.id = Series.subgenre.id"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end

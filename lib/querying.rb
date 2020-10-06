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
  "SELECT authors.name, subgenres.name
    FROM authors
    INNER JOIN series ON Authors.id = Series.author_id
    INNER JOIN subgenres ON Subgenres.id = Series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
    FROM series
    INNER JOIN authors ON Authors.id = Series.author_id
    INNER JOIN characters ON Authors.id = Characters.author_id
    GROUP BY characters.species
    ORDER BY COUNT(species)
    LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title) FROM characters
    INNER JOIN character_books ON Characters.id = Character_books.character_id
    INNER JOIN books ON Books.id = Character_books.book_id
    GROUP BY characters.name
    ORDER BY COUNT(books.title)
    DESC"
end

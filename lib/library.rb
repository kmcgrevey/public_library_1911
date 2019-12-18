class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  endgit

  def add_author(author)
    @authors << author
    # require "pry"; binding.pry
    @books << author.books
  end

    def books
      @books = @books.flatten
    end

end

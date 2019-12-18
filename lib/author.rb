# require 'book'

class Author
  attr_reader :name, :books

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @books = []
  end

  def name
    @name = "#{@first_name} #{@last_name}"
  end

  def write(title, date)
    Book.new({title: title, publication_date: date})
  end

end

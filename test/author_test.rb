require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'

class AuthorTest < Minitest::Test

  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  end

  def test_it_has_attributes
    assert_equal "Charlotte Bronte", @charlotte_bronte.name
    assert_equal [], @charlotte_bronte.books
  end

  def test_an_author_can_write_a_book
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_equal Book, jane_eyre.class
    assert_equal "Jane Eyre", jane_eyre.title
  end

  def test_author_can_accumulate_books
    @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @charlotte_bronte.write("Villette", "1853")
    assert_equal 2, @charlotte_bronte.books.count
    assert_equal Book, @charlotte_bronte.books[0].class
  end
end






#
# pry(main)> charlotte_bronte.books
# #=> [#<Book:0x00007fb896e22538...>, #<Book:0x00007fb8980aaca0...>]

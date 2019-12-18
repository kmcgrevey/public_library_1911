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

  end

end


#
# pry(main)> charlotte_bronte.name
# #=> "Charlotte Bronte"
#
# pry(main)> charlotte_bronte.books
# #=> []
#
# pry(main)> jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
# #=> #<Book:0x00007fb896e22538...>
#
# pry(main)> jane_eyre.class
# #=> Book
#
# pry(main)> jane_eyre.title
# #=> "Jane Eyre"
#
# pry(main)> charlotte_bronte.write("Villette", "1853")
# #=> #<Book:0x00007fb8980aaca0...>
#
# pry(main)> charlotte_bronte.books
# #=> [#<Book:0x00007fb896e22538...>, #<Book:0x00007fb8980aaca0...>]

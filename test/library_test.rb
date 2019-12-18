require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'
require './lib/library'

class AuthorTest < Minitest::Test

  def setup
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @professor = @charlotte_bronte.write("The Professor", "1857")
    @villette = @charlotte_bronte.write("Villette", "1853")
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end

  def test_it_has_attributes
    assert_equal "Denver Public Library", @dpl.name
    assert_equal [], @dpl.books
    assert_equal [], @dpl.authors
  end

  def test_it_can_add_authors
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)
    assert_equal [@charlotte_bronte, @harper_lee], @dpl.authors
  end

  def test_it_can_accumulate_books
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)
    assert_equal [@professor, @villette, @mockingbird], @dpl.books
    # @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    # assert_equal [@professor, @villette, @mockingbird, @jane_eyre ], @dpl.books
  end

end



# pry(main)> charlotte_bronte.write("Jane Eyre", "October 16, 1847")
# #=> #<Book:0x00007fbeeb3beca8...>
#


#
# pry(main)> dpl.books
# => [#<Book:0x00007fbeeb3beca8...>, #<Book:0x00007fbeea8efd90...>, #<Book:0x00007fbeea24fbe8...>, #<Book:0x00007fbeeb1089f0...>]
#
# pry(main)> dpl.publication_time_frame_for(charlotte_bronte)
# #=> {:start=>"1847", :end=>"1857"}
#
# pry(main)> dpl.publication_time_frame_for(harper_lee)
# #=> {:start=>"1960", :end=>"1960"}

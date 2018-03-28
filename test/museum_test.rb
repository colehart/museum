require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require 'pry'

class MuseumTest < MiniTest::Test

  def test_it_exists
    museum = Museum.new(name)
    assert_instance_of Museum, museum
  end

  def test_it_requires_name_argument_to_instantiate
    museum = Museum.new("Denver Museum of Nature and Science")
    actual = "Denver Museum of Nature and Science"
    expected = museum.name
    assert_equal actual, expected
  end

  def test_it_instantiates_with_empty_interest_array
    skip
    museum = Museum.new("Bob")
    actual = []
    expected = museum.interests
    assert_equal actual, expected
  end

  def test_it_can_add_interests
    skip
    museum = Museum.new("Bob")
    actual = []
    expected = museum.add_interest("Dead Sea Scrolls")
    refute_equal actual, expected
  end

end

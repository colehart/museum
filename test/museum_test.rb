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

  def test_it_instantiates_with_empty_exhibit_hash
    museum = Museum.new("Denver Museum of Nature and Science")
    actual = {}
    expected = museum.exhibits
    assert_equal actual, expected
  end

  def test_it_can_add_exhibits
    museum = Museum.new("Denver Museum of Nature and Science")
    actual = {}
    expected = museum.add_exhibit("Dead Sea Scrolls", 10)
    refute_equal actual, expected
  end

end

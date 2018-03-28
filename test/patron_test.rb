require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'

class PatronTest < MiniTest::Test

  def test_it_exists
    patron = Patron.new(name)
    assert_instance_of Patron, patron
  end

  def test_it_requires_name_argument_to_instantiate
    patron = Patron.new("Bob")
    actual = "Bob"
    expected = patron.name
    assert_equal actual, expected
  end

  def test_it_instantiates_with_empty_interest_array
    patron = Patron.new("Bob")
    actual = []
    expected = patron.interests
    assert_equal actual, expected
  end

  def test_it_can_add_interests
    patron = Patron.new("Bob")
    actual = []
    expected = patron.add_interests("Dead Sea Scrolls")
    refute_equal actual, expected
  end

end

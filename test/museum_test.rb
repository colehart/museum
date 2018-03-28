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

  def test_it_can_add_exhibits_with_name_as_key_and_cost_as_value
    museum = Museum.new("Denver Museum of Nature and Science")
    museum.add_exhibit("Dead Sea Scrolls", 10)
    museum.add_exhibit("Gems and Minerals", 0)
    actual = {"Dead Sea Scrolls" => 10, "Gems and Minerals" => 0}
    expected = museum.exhibits
    assert_equal actual, expected
  end

  def test_it_starts_with_0_revenue
    museum = Museum.new("Denver Museum of Nature and Science")
    actual = 0
    expected = museum.revenue
    assert_equal actual, expected
  end

  def test_it_adds_10_to_revenue_when_admitting_patron
    museum = Museum.new("Denver Museum of Nature and Science")
    museum.admit("Bob")
    actual = 10
    expected = museum.revenue
    assert_equal actual, expected
  end

  #need to include revenue for patron interests that match exhibits.
  def test_it_adds_revenue_of_exhibits_that_match_patron_interest
    dmns = Museum.new("Denver Museum of Nature and Science")
    dmns.add_exhibit("Dead Sea Scrolls", 10)
    dmns.add_exhibit("Gems and Minerals", 0)

    bob = Patron.new("Bob")
    bob.add_interest("Gems and Minerals")
    bob.add_interest("Dead Sea Scrolls")
    bob.add_interest("Imax")
    sally = Patron.new("Sally")
    sally.add_interest("Dead Sea Scrolls")

    dmns.admit(bob)
    dmns.admit(sally)

    actual = 40
    expected = dmns.revenue
    assert_equal actual, expected
  end
end

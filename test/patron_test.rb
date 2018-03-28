require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'

class PatronTest < MiniTest::Test

  def test_it_exists
    patron = Patron.new
    assert_instance_of Patron, patron
  end

end

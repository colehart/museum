require 'pry'

class Patron
  attr_reader :name,
              :interests

  def initialize(name)
    @name = name
    @interests = []
  end

  def add_interest(new_interest)
    @interests << new_interest
  end
end

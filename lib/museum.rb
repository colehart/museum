require 'pry'

class Museum
  attr_reader :name
              :exhibits

  def initialize(name)
    @name = name
    @exhibits = {}
  end

  # def add_exhibit(new_exhibit, cost)
  #   @exhibit << new_exhibit
  # end
end
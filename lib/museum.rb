require './lib/patron.rb'
require 'pry'

class Museum
  attr_reader :name,
              :exhibits,
              :revenue

  def initialize(name)
    @name = name
    @exhibits = {}
    @revenue = 0
  end

  def add_exhibit(new_exhibit, cost)
    @exhibits.update Hash[new_exhibit, cost]
  end

  def admit(patron)
    @revenue += 10

    if @exhibits.include?(@interests.map {|interest| interest.to_s})
      @revenue += @exhibits.values
    end
  end
end

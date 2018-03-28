class Patron
  attr_reader :name,
              :interests

  def initialize(name)
    @name = name
    @interests = []
  end

  def add_interests(new_interests)
    @interests << new_interests
  end
end

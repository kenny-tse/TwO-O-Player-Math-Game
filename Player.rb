class Player

  def initialize(name)
    @name = name
    @health = 3
  end

  attr_accessor :health, :name

  def health_is?
    return "#{health}/3"
  end

end
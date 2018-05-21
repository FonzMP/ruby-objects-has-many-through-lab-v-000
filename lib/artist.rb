class Artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  def all
    @@all
  end

end

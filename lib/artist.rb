class Artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << name

  def all
    @@all
  end

end

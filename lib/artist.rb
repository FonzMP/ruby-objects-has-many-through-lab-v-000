class Artist

  attr_accessor :name,
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    self.songs << Song.new(name, self, genre)
  end

end

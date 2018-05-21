class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    self.songs << Song.new(name, self, genre)
  end

  def songs
    Artist.all.select do |artists|
      artist.name == self
    end
  end

  # def genres

end

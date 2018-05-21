class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    create_genre = Genre.new(genre)
    create_song = Song.new(name)
    create_song.artist << self
  end

end

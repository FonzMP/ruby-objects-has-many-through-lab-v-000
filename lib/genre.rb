class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def new_song(name, artist)
    self.songs <<

end

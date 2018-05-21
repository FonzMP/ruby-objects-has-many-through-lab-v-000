class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    Artist.all.select do |artists|
      artists.genre == self
    end
  end

end

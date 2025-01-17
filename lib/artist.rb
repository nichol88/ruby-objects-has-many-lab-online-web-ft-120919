class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select{ |s|
      s.artist == self
    }
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    s = Song.new(name)
    add_song(s)
  end

  def self.song_count
    Song.all.length
  end

end

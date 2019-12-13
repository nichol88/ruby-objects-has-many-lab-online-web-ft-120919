class Song
  attr_accessor :name, :artist
  @@songs = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@songs << self
  end

  def self.songs
    @@songs
  end


end

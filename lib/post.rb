class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.posts
    @@all
  end

  def self.all

  end
end

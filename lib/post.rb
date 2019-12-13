class Post
  attr_accessor :title, :author
  @@posts = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@posts << self
  end

  def self.posts
    @@posts
  end

end

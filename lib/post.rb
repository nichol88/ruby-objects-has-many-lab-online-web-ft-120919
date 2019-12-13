class Post
  attr_accessor :title, :author
  @@posts = []

  def initialize(title)
    @title = title
  end

  def save
    @@posts << self
  end

end

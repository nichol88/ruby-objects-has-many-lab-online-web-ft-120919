class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.posts.select{ |post| post.author == self}
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

end

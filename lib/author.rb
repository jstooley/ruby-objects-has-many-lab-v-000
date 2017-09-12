class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_posts(post)
    @posts << post
    post.author = self
  end
end

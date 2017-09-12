class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end

   def posts
     @posts
   end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

end

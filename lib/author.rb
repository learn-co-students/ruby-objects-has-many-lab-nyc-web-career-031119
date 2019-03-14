class Author
  @@posts = []

  attr_reader :name, :posts
  def initialize(name = nil)
    @name = name
    @posts = []

  end


  def add_post(post)
     post.author = self
    @posts << post
    @@posts << post
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    @posts << new_post
    @@posts << new_post
    new_post.author = self
  end

  def self.post_count
    @@posts.length
  end

end

class Author

  attr_accessor :name, :posts

  def self.post_count
    Post.all.count
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @posts << post
    post.author = self
  end
end

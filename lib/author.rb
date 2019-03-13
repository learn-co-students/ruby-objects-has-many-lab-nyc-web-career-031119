class Author
  attr_reader :name
  attr_accessor :posts
  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@count += 1
  end

  def add_post_by_title(title)
    new = Post.new(title)
    @posts << new
    new.author = self
    @@count += 1
  end

  def self.post_count
    @@count
  end
end

class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(arg)
    @posts << arg
    arg.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    Post.all.length
  end

end

class Author

  attr_accessor :name, :author, :post
  @@posts = []

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end


  def add_post_by_title(new_post)
    new_post = Post.new(new_post)
    @@posts << new_post
    new_post.author = self
  end

  def self.post_count
    Post.all.length
  end

end

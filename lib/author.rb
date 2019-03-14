require 'pry'
class Author
  attr_accessor :name, :post
  @@all = []
  def initialize(name)
    @name = name
  end

  def posts
    @@all
  end

  def add_post(post)
    @@all << post
    post.author = self
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    @@all << new_post
    new_post.author = self
  end

  def self.post_count
    @@all.length
  end
end

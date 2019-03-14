require 'pry'

class Author
  attr_accessor :name

@@all = []

def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end

def posts
  Post.all
end

def self.post_count
    Post.all.count
end

def add_post(post)
  #binding.pry
 # self.posts = self #to know the post that belongs to me
   post.author = self
#I want to know the author of a specific post
end

def add_post_by_title(title)
  # binding.pry
  post = Post.new(title)
   post.author = self
end


end

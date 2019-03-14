require 'pry'
class Post
  @@all = []

  attr_accessor :title, :author
  def initialize(title)
    @title = title
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author != nil
      self.author.name
    else
      self.author
    end
  end


end

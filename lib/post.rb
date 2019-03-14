class Post

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :title, :author
  attr_reader :author_name

  def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author)
    @author = author
    @author_name = @author.name
  end
end

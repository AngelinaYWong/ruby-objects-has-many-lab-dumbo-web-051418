class Post
  attr_accessor :post, :author
  
  @@all
  def intitialize(title, author=nil)
    @title = title
    @@all << self
  end
  
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end


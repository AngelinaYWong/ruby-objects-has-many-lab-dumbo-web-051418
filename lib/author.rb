class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @all = []
  end
  
  def add_post_by_title(title)
    post = Post.new(title, self)
  end

  def posts
    Post.all.select { |post| post.author == self }
  end

end
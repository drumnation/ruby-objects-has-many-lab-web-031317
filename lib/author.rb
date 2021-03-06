class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    self.name = name
    self.posts = []
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
    self.posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end

end

class Post
  attr_reader :title, :body

  def initialize(title, body)
    @title = title.titleize
    @body = body
  end

  def summary
    @body[0..29]
  end

end

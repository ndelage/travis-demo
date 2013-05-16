require 'spec_helper'

describe Post do
  it "titlizes the title" do
    Post.new("a title", "body").title.should == "A Title"
  end

  context "#summary" do
    it "returns only the first 30 characters of the summary" do
      post = Post.new("a title", "b"*100)
      post.summary.length.should == 30
    end
  end
end

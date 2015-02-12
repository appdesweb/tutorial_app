require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "should not save post without title" do
    post = Post.new
    assert !post.save
  end
  test "post values should not be empty" do
    post = Post.new
    assert post.invalid?
    assert post.errors[:title].any?
    assert post.errors[:blurb].any?
    assert post.errors[:body].any
  end
end

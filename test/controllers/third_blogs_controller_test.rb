require 'test_helper'

class ThirdBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @third_blog = third_blogs(:one)
  end

  test "should get index" do
    get third_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_third_blog_url
    assert_response :success
  end

  test "should create third_blog" do
    assert_difference('ThirdBlog.count') do
      post third_blogs_url, params: { third_blog: { title: @third_blog.title } }
    end

    assert_redirected_to third_blog_url(ThirdBlog.last)
  end

  test "should show third_blog" do
    get third_blog_url(@third_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_third_blog_url(@third_blog)
    assert_response :success
  end

  test "should update third_blog" do
    patch third_blog_url(@third_blog), params: { third_blog: { title: @third_blog.title } }
    assert_redirected_to third_blog_url(@third_blog)
  end

  test "should destroy third_blog" do
    assert_difference('ThirdBlog.count', -1) do
      delete third_blog_url(@third_blog)
    end

    assert_redirected_to third_blogs_url
  end
end

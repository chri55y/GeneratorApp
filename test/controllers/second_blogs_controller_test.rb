require 'test_helper'

class SecondBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @second_blog = second_blogs(:one)
  end

  test "should get index" do
    get second_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_second_blog_url
    assert_response :success
  end

  test "should create second_blog" do
    assert_difference('SecondBlog.count') do
      post second_blogs_url, params: { second_blog: { title: @second_blog.title } }
    end

    assert_redirected_to second_blog_url(SecondBlog.last)
  end

  test "should show second_blog" do
    get second_blog_url(@second_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_second_blog_url(@second_blog)
    assert_response :success
  end

  test "should update second_blog" do
    patch second_blog_url(@second_blog), params: { second_blog: { title: @second_blog.title } }
    assert_redirected_to second_blog_url(@second_blog)
  end

  test "should destroy second_blog" do
    assert_difference('SecondBlog.count', -1) do
      delete second_blog_url(@second_blog)
    end

    assert_redirected_to second_blogs_url
  end
end

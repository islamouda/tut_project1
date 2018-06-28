require 'test_helper'

class Page1PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page1_post = page1_posts(:one)
  end

  test "should get index" do
    get page1_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_page1_post_url
    assert_response :success
  end

  test "should create page1_post" do
    assert_difference('Page1Post.count') do
      post page1_posts_url, params: { page1_post: { body: @page1_post.body, description: @page1_post.description, image: @page1_post.image, slug: @page1_post.slug, title: @page1_post.title } }
    end

    assert_redirected_to page1_post_url(Page1Post.last)
  end

  test "should show page1_post" do
    get page1_post_url(@page1_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_page1_post_url(@page1_post)
    assert_response :success
  end

  test "should update page1_post" do
    patch page1_post_url(@page1_post), params: { page1_post: { body: @page1_post.body, description: @page1_post.description, image: @page1_post.image, slug: @page1_post.slug, title: @page1_post.title } }
    assert_redirected_to page1_post_url(@page1_post)
  end

  test "should destroy page1_post" do
    assert_difference('Page1Post.count', -1) do
      delete page1_post_url(@page1_post)
    end

    assert_redirected_to page1_posts_url
  end
end

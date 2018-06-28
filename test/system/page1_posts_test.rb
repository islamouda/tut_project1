require "application_system_test_case"

class Page1PostsTest < ApplicationSystemTestCase
  setup do
    @page1_post = page1_posts(:one)
  end

  test "visiting the index" do
    visit page1_posts_url
    assert_selector "h1", text: "Page1 Posts"
  end

  test "creating a Page1 post" do
    visit page1_posts_url
    click_on "New Page1 Post"

    fill_in "Body", with: @page1_post.body
    fill_in "Description", with: @page1_post.description
    fill_in "Image", with: @page1_post.image
    fill_in "Slug", with: @page1_post.slug
    fill_in "Title", with: @page1_post.title
    click_on "Create Page1 post"

    assert_text "Page1 post was successfully created"
    click_on "Back"
  end

  test "updating a Page1 post" do
    visit page1_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @page1_post.body
    fill_in "Description", with: @page1_post.description
    fill_in "Image", with: @page1_post.image
    fill_in "Slug", with: @page1_post.slug
    fill_in "Title", with: @page1_post.title
    click_on "Update Page1 post"

    assert_text "Page1 post was successfully updated"
    click_on "Back"
  end

  test "destroying a Page1 post" do
    visit page1_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page1 post was successfully destroyed"
  end
end

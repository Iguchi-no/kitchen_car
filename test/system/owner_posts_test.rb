require "application_system_test_case"

class OwnerPostsTest < ApplicationSystemTestCase
  setup do
    @owner_post = owner_posts(:one)
  end

  test "visiting the index" do
    visit owner_posts_url
    assert_selector "h1", text: "Owner posts"
  end

  test "should create owner post" do
    visit owner_posts_url
    click_on "New owner post"

    fill_in "Date", with: @owner_post.date
    fill_in "End time", with: @owner_post.end_time
    fill_in "Memo", with: @owner_post.memo
    fill_in "Place", with: @owner_post.place
    fill_in "Start time", with: @owner_post.start_time
    click_on "Create Owner post"

    assert_text "Owner post was successfully created"
    click_on "Back"
  end

  test "should update Owner post" do
    visit owner_post_url(@owner_post)
    click_on "Edit this owner post", match: :first

    fill_in "Date", with: @owner_post.date
    fill_in "End time", with: @owner_post.end_time
    fill_in "Memo", with: @owner_post.memo
    fill_in "Place", with: @owner_post.place
    fill_in "Start time", with: @owner_post.start_time
    click_on "Update Owner post"

    assert_text "Owner post was successfully updated"
    click_on "Back"
  end

  test "should destroy Owner post" do
    visit owner_post_url(@owner_post)
    click_on "Destroy this owner post", match: :first

    assert_text "Owner post was successfully destroyed"
  end
end

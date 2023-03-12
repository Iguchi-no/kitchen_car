require "test_helper"

class OwnerPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @owner_post = owner_posts(:one)
  end

  test "should get index" do
    get owner_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_owner_post_url
    assert_response :success
  end

  test "should create owner_post" do
    assert_difference("OwnerPost.count") do
      post owner_posts_url, params: { owner_post: { date: @owner_post.date, end_time: @owner_post.end_time, memo: @owner_post.memo, place: @owner_post.place, start_time: @owner_post.start_time } }
    end

    assert_redirected_to owner_post_url(OwnerPost.last)
  end

  test "should show owner_post" do
    get owner_post_url(@owner_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_owner_post_url(@owner_post)
    assert_response :success
  end

  test "should update owner_post" do
    patch owner_post_url(@owner_post), params: { owner_post: { date: @owner_post.date, end_time: @owner_post.end_time, memo: @owner_post.memo, place: @owner_post.place, start_time: @owner_post.start_time } }
    assert_redirected_to owner_post_url(@owner_post)
  end

  test "should destroy owner_post" do
    assert_difference("OwnerPost.count", -1) do
      delete owner_post_url(@owner_post)
    end

    assert_redirected_to owner_posts_url
  end
end

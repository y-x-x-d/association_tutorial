require 'test_helper'

class FavoritControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favorit_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favorit_destroy_url
    assert_response :success
  end

end

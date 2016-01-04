require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get fournotfour" do
    get :fournotfour
    assert_response :success
  end

end

require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get insert" do
    get :insert
    assert_response :success
  end

end

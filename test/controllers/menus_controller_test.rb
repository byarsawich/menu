require 'test_helper'

class MenusControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

end

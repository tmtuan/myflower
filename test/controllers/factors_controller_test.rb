require 'test_helper'

class FactorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

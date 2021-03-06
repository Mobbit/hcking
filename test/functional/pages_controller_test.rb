require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  test "should get show" do
    get :show, {page_name: 'impressum'}
    assert_response :success
    assert_template "impressum", "render impressum"
  end

  test "should get 404" do
    get :show, {page_name: "notthere"}
    assert_response :missing
    assert_template :missing
  end

end

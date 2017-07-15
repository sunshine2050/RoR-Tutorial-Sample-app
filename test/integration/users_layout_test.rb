require 'test_helper'

class UsersLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = users(:aaa)
  end
  
  test "User click on Signup Now" do
    get signup_path
    assert_template 'users/new'
    assert_select "title", full_title("Sign up")
  end
  
  test "User click on home" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "title", full_title("")
  end
  
  test "User click on help" do
    get help_path
    assert_template 'static_pages/help'
    assert_select "title", full_title("Help")
  end
  
end

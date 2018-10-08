require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  #def setup
  #	@base_title = "Ruby on Rails Tutorial Hello App"
 # end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Hello"
  end

  test "should get help" do 
    get help_path
    assert_response :success
    assert_select "title", "Help | Hello"
  end
  
  test "should get about" do
  	get about_path
  	assert_response :success
  	assert_select "title", "About | Hello"
  end
  
  test "should get contact" do
  	get contact_path
  	assert_response :success
  	assert_select "title", "Contact | Hello"
  end
end

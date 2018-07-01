require 'test_helper'

class EducationControllerTest < ActionDispatch::IntegrationTest
  test "should get Edu_P1" do
    get education_Edu_P1_url
    assert_response :success
  end

end

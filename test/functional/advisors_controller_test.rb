require 'test_helper'

class AdvisorsControllerTest < ActionController::TestCase
  setup do
    @advisor = advisors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advisors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advisor" do
    assert_difference('Advisor.count') do
      post :create, :advisor => @advisor.attributes
    end

    assert_redirected_to advisor_path(assigns(:advisor))
  end

  test "should show advisor" do
    get :show, :id => @advisor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @advisor.to_param
    assert_response :success
  end

  test "should update advisor" do
    put :update, :id => @advisor.to_param, :advisor => @advisor.attributes
    assert_redirected_to advisor_path(assigns(:advisor))
  end

  test "should destroy advisor" do
    assert_difference('Advisor.count', -1) do
      delete :destroy, :id => @advisor.to_param
    end

    assert_redirected_to advisors_path
  end
end

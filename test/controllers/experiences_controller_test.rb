require 'test_helper'

class ExperiencesControllerTest < ActionController::TestCase
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experience" do
    assert_difference('Experience.count') do
      post :create, experience: { body: @experience.body, f_income: @experience.f_income, f_start: @experience.f_start, f_total: @experience.f_total, helper: @experience.helper, location: @experience.location, m_income: @experience.m_income, m_start: @experience.m_start, m_total: @experience.m_total, title: @experience.title }
    end

    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should show experience" do
    get :show, id: @experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experience
    assert_response :success
  end

  test "should update experience" do
    patch :update, id: @experience, experience: { body: @experience.body, f_income: @experience.f_income, f_start: @experience.f_start, f_total: @experience.f_total, helper: @experience.helper, location: @experience.location, m_income: @experience.m_income, m_start: @experience.m_start, m_total: @experience.m_total, title: @experience.title }
    assert_redirected_to experience_path(assigns(:experience))
  end

  test "should destroy experience" do
    assert_difference('Experience.count', -1) do
      delete :destroy, id: @experience
    end

    assert_redirected_to experiences_path
  end
end

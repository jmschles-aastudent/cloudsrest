require 'test_helper'

class CloudpostsControllerTest < ActionController::TestCase
  setup do
    @cloudpost = cloudposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cloudposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cloudpost" do
    assert_difference('Cloudpost.count') do
      post :create, cloudpost: { content: @cloudpost.content, name: @cloudpost.name }
    end

    assert_redirected_to cloudpost_path(assigns(:cloudpost))
  end

  test "should show cloudpost" do
    get :show, id: @cloudpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cloudpost
    assert_response :success
  end

  test "should update cloudpost" do
    put :update, id: @cloudpost, cloudpost: { content: @cloudpost.content, name: @cloudpost.name }
    assert_redirected_to cloudpost_path(assigns(:cloudpost))
  end

  test "should destroy cloudpost" do
    assert_difference('Cloudpost.count', -1) do
      delete :destroy, id: @cloudpost
    end

    assert_redirected_to cloudposts_path
  end
end

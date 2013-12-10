require 'test_helper'

class EdictsControllerTest < ActionController::TestCase
  setup do
    @edict = edicts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edicts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edict" do
    assert_difference('Edict.count') do
      post :create, edict: { end: @edict.end, file: @edict.file, name: @edict.name, slug: @edict.slug, start: @edict.start }
    end

    assert_redirected_to edict_path(assigns(:edict))
  end

  test "should show edict" do
    get :show, id: @edict
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edict
    assert_response :success
  end

  test "should update edict" do
    patch :update, id: @edict, edict: { end: @edict.end, file: @edict.file, name: @edict.name, slug: @edict.slug, start: @edict.start }
    assert_redirected_to edict_path(assigns(:edict))
  end

  test "should destroy edict" do
    assert_difference('Edict.count', -1) do
      delete :destroy, id: @edict
    end

    assert_redirected_to edicts_path
  end
end

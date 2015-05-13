require 'test_helper'

class NeueXTabelleYsControllerTest < ActionController::TestCase
  setup do
    @neue_x_tabelle_y = neue_x_tabelle_ies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:neue_x_tabelle_ies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create neue_x_tabelle_y" do
    assert_difference('NeueXTabelleY.count') do
      post :create, neue_x_tabelle_y: { nochWas: @neue_x_tabelle_y.nochWas, strangerName: @neue_x_tabelle_y.strangerName }
    end

    assert_redirected_to neue_x_tabelle_y_path(assigns(:neue_x_tabelle_y))
  end

  test "should show neue_x_tabelle_y" do
    get :show, id: @neue_x_tabelle_y
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @neue_x_tabelle_y
    assert_response :success
  end

  test "should update neue_x_tabelle_y" do
    patch :update, id: @neue_x_tabelle_y, neue_x_tabelle_y: { nochWas: @neue_x_tabelle_y.nochWas, strangerName: @neue_x_tabelle_y.strangerName }
    assert_redirected_to neue_x_tabelle_y_path(assigns(:neue_x_tabelle_y))
  end

  test "should destroy neue_x_tabelle_y" do
    assert_difference('NeueXTabelleY.count', -1) do
      delete :destroy, id: @neue_x_tabelle_y
    end

    assert_redirected_to neue_x_tabelle_ies_path
  end
end

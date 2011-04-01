require 'test_helper'

class SpotsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Spot.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Spot.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Spot.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to spot_url(assigns(:spot))
  end

  def test_edit
    get :edit, :id => Spot.first
    assert_template 'edit'
  end

  def test_update_invalid
    Spot.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Spot.first
    assert_template 'edit'
  end

  def test_update_valid
    Spot.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Spot.first
    assert_redirected_to spot_url(assigns(:spot))
  end

  def test_destroy
    spot = Spot.first
    delete :destroy, :id => spot
    assert_redirected_to spots_url
    assert !Spot.exists?(spot.id)
  end
end

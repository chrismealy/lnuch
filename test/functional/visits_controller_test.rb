require 'test_helper'

class VisitsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Visit.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Visit.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Visit.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to visit_url(assigns(:visit))
  end

  def test_edit
    get :edit, :id => Visit.first
    assert_template 'edit'
  end

  def test_update_invalid
    Visit.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Visit.first
    assert_template 'edit'
  end

  def test_update_valid
    Visit.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Visit.first
    assert_redirected_to visit_url(assigns(:visit))
  end

  def test_destroy
    visit = Visit.first
    delete :destroy, :id => visit
    assert_redirected_to visits_url
    assert !Visit.exists?(visit.id)
  end
end

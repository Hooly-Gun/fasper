require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { date_edit: @order.date_edit, date_order: @order.date_order, description: @order.description, id_customer: @order.id_customer, id_linkman: @order.id_linkman, id_order_status: @order.id_order_status, number_order: @order.number_order, summa_order: @order.summa_order }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { date_edit: @order.date_edit, date_order: @order.date_order, description: @order.description, id_customer: @order.id_customer, id_linkman: @order.id_linkman, id_order_status: @order.id_order_status, number_order: @order.number_order, summa_order: @order.summa_order }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end

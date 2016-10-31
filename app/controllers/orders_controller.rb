class OrdersController < ApplicationController
  before_action :authenticate_user!

 def index
   @orders = Order.all
   @order =Order.new
   @meal= Meal.new
  #  @orders = current_user.orders
  #   @meal = Meal.new
  #   @order= current_order
  #   respond_with(@meals)
  end
  def new
    @order = Order.new
  end
  def create
    @order = Order.new(order_params)
    @users = User.new
    if @order.save
      redirect_to root_path, notice:"Order was successfully created"
    else
      render action: 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end


  def order_params
    params.require(:order).permit(:restaurant_name, :order_status, :dish_name, :price)
  end
end

class MealsController < ApplicationController
  before_filter :get_order

   # GET /orders/new
   def get_order
     @order= Order.find(params[:order_id])
   end
   def show
     @meal = @order.meals.find(params[:id])
   end

   def index
     @meals = @order.meals
   end
   def new

     @order = Order.new
   end

   def create
     @meal = @order.meals.new(params[:meal])
     respond_to do |format|
       if @meal.save
         format.html {redirect_to[@order, @meal]}
         format.json {render json:[@order,@meal],
                              status: :created,
                            location: [@order, @meal]}
        else
        render action: 'new'

      end

   end

   # POST /orders
   # POST /orders.json
#    def create
#  @meal = current_order.meals.build(meal_params)
#   # current_restaurant= Restaurant.find(params[:id])
#
#
# end
  # def new
  #   @meal= Meal.new
  #   # @meal= current_restaurant.meals.build
  #
  # end
  #
  # def create
  #   # @meal= current_restaurant.meals.build(meal_params)
  #   @meal= Meal.new(meal_params)
  #   if @meal.save
  #     redirect_to root_path, notice:"You successfully add meal"
  #   else
  #     render action: 'new'
  #   end
  # end

  private
  def meal_params
    params.require(:meal).permit(:dish_name, :price)
  end

end

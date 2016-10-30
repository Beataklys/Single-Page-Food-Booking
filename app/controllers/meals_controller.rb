class MealsController < ApplicationController
  def new
    @meal= Meal.new
  end

  def create
    @meal= Meal.new(meal_params)
    if @meal.save
      redirect_to root_path, notice:"You successfully add meal"
    else
      render action: 'new'
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:dish_name, :price)
  end
end

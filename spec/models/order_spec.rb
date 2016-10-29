require 'rails_helper'

RSpec.describe Order, type: :model do

  it "is valid with restaurant_name " do
    order = Order.new(restaurant_name: "U zbója")
    expect(order).to be_valid
    
  end

  it "is invalid without restaurant_name" do
    order = Order.new
    order.valid?
    expect(order.errors[:restaurant_name]).to include("can't be blank")
  end

end

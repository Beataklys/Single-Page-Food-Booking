require 'rails_helper'

RSpec.describe OrdersController, type: :controller do


    it "redirects after create order to the root path" do
      post :create
      expect{redirect_to root_path }
    end


  # describe 'GET #show' do
  #   let(:order) { Order.create(restaurant_name: "u andrzeja", order_status: "pending")}
  #   it 'should assign order when valid id' do
  #     get :show, id: order.id
  #     expect(assigns(:order)).to eq(order)
  #   end
  #
  #   it 'should raise error when invalid id' do
  #     expect { get :show, id: 'abc' }.to raise_error(ActiveRecord::RecordNotFound)
  #   end
  # end

end

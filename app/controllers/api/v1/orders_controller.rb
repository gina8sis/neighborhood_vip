class Api::V1::OrdersController < ApplicationController


  def create
    @order = Order.new
    @order.save

    render :json => @order
  end

  # def show
  # @orders = Order.all
  # end

  # def edit
  #   @order = Order.find(params[:id])
  # end

  # def update
  #   @order = Order.find(params[:id])
  #   @order.update(order_params)

  #   # @order.save
  #   redirect_to(show_path)
  # end



end
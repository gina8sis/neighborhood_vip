class Api::V1::OrdersController < ApplicationController


  def create
    # binding.pry

   headers['Access-Control-Allow-Origin'] = request.headers["HTTP_ORIGIN"]
    # message = Message.new(message_params)
   order = Order.new

    hash = JSON(params["items"])

    params_hack = JSON.parse(params.keys[0])

    items.each do |items|
      order.line_items.new(quantity:item.quantity, name: hash["name"].to_i, instruction: item.instruction)
    end

    # raise params.inspect
    # order.instructions = params_hack['instructions']
      if order.save
        render :json => order
      else
        render :json => { :errors => message.errors.full_messages }
      end
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
class MenuItemsController < ApplicationController


  def new
    @item = Item.new
    @item.save
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to(show_path)
    else
      render :new
    end
  end

  def show
    @items = Item.all
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)

    # @item.save
    redirect_to(show_path)
  end


end
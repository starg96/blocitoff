class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def new
  	@item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end
  
  def create
  	@item = Item.new(params.require(:item).permit(:name))
    if @item.save
       redirect_to @item, notice: "item was saved successfully."
     else
       flash[:error] = "Error creating item. Please try again."
       render :new
     end
  end

  def destroy
  end
end

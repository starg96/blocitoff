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
  #  @user = User.find(params[:user_id])
  	@item = current_user.items.build(params.require(:item).permit(:name))
    if @item.save
       redirect_to item_path(@item), notice: "item was saved successfully."
     else
       flash[:error] = "Error creating item. Please try again."
       render :new
     end
  end

  def destroy
    @item = current_user.items.find(params[:id])

    if @item.delete
      redirect_to current_user
    end
    # Make the magic happen
    #we need some code to delete a specific item
  end
end

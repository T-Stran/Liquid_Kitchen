class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.where(user: current_user)
  end

  def create
    @favourite = Favourite.new
    @favourite.user = current_user
    @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail.pub = @cocktail
    if @favourite.save
      redirect_to cocktail_path(@cocktail), notice: "This cocktail was sucesfully added to your favourites"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    if @favourite.destroy!
      redirect_to user_favourites_path(:user_id), status: :see_other
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def favourite_params
    params.require(:favourite).permit(:cocktail_id)
  end

end

class IngredientsController < ApplicationController



  def show
    @ingredients = Ingredient.where("name LIKE ?", "%#{params[:query]}%")
  end

  def index
    if params[:query].present?
      @ingredients = Ingredient.where("name LIKE ?", "%#{params[:query]}%")
    else
      @ingredients = Ingredient.all
    end


  end
end

class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def search
    if params[:query].present?
      @ingredients = Ingredient.where("ingredient LIKE ?", "%#{params[:query]}%")
    else
      @ingredients = Ingredient.all
    end

    render turbo_stream: turbo_stream.replace(
      'ingredients',
      partial: 'list',
      locals: {
        ingredients: @ingredients
      }
    )
  end
end



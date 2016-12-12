class RecipesController < ApplicationController
  def index
    @search_term = params[:search] || 'beer'

    @recipes = Recipe.for(@search_term)
  end
end

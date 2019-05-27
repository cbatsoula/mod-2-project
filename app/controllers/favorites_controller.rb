class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def show
    @favorite = Favorite.find_by(params[:id])
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.save
    redirect_to @favorite
  end

  def edit
    @favorite = Favorite.find_by(params[:id])
  end

  def update
    @favorite = Favorite.find_by(params[:id])
    @favorite.update(favorite_params)
    @favorite.save
    redirect_to @favorite
  end

  def destroy
    @favorite = Favorite.find_by(params[:id])
    @favorite.destroy

  end

  private

  def favorite_params
    params.require(:favorite).permit(:name, users_id:[], website_id:[])
  end
end

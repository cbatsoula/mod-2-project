class WebsitesController < ApplicationController

  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def show
    @website = Website.find_by(params[:id])
  end

  def create
    @website = Website.new(website_params)
    @website.save
    redirect_to @website
  end

  def edit
    @website = Website.find_by(params[:id])
  end

  def update
    @website = Website.find_by(params[:id])
    @website.update(website_params)
    @website.save
  end

  def destroy
    @website = Website.find_by(params[:id])
    @website.destroy
  end

  private

  def website_params
    params.require(:website).permit(:name, :address, :category)
  end
end

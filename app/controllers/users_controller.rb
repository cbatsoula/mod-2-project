class UsersController < ApplicationController
#do we need an index of all users? Maybe not, but we do need an index for list of friends that are users
  # def index
  #
  # end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      #flash error message "please enter a valid name, email, and password"
      render :new
    end
  end

  def edit
    @user = User.find_by(params[:id])
  end

  def update
    @user = User.find_by(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to @user
  end

  def destroy
    @user = User.find_by(params[:id])
    @user.destroy
    # redirect_to
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end

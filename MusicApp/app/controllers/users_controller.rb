class UsersController < ApplicationController

  def new
    # @user = User.new this is only needed if making a partial shared with edit
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user
      log_in_user!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

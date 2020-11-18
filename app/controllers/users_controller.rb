class UsersController < ApplicationController

  def edit
  end

  def show
  end

  def index
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "memo was successfully destroyed."
    redirect_to memos_path
  end

  def user_params
    params.require(:customer).permit(:name, :email)
  end
end

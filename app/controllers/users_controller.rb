class UsersController < ApplicationController
  

  def index
    @users = User.all
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy

    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "User deleted."
  end


  private
  def user_params
    # debugger
    params.require(:user).permit(:id, :email, :first_name, :last_name, :mobile_no, :age, :password, :password_confirmation)
  end

end

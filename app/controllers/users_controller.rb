class UsersController < ApplicationController

  protect_from_forgery with: :null_session

  def new
  end

  def show
    @users = User.all
    #redirect_to action:'show'
    render :json => @users
  end

  def delete_users
    @users = User.all
    @users.destroy_all
    @users = User.all
    render :json => @users
  end

  def add_user
    @user = User.new({name: params[:name], age: params[:age], email: params[:email], image: params[:image]})
    @user.save
    @users = User.all
    render :json => @users
  end

  def delete_user
    puts(params[:id])
    @user = User.find_by(id: params[:id])
    @user.destroy
    @users = User.all
    render :json => @users
  end

end

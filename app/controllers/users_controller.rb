class UsersController < ApplicationController
  def new
  end 
  
  def index
    @users = User.all 
  end 

  def show
    @post = Post.new
    @posts = Post.all 
    @user = User.find(params[:id])
  end 

  




end

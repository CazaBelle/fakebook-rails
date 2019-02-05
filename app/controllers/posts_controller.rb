class PostsController < ApplicationController

  def index
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def show
    @posts = Post.all
  end 
  
  def create
    @post = current_user.posts.build(post_params)
      if @post.save
      redirect_to @post, notice: "Post successful"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private

  def post_params 
    params.require(:post).permit(:content)
  end 
  


end


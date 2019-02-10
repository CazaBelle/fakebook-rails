class PostsController < ApplicationController

  def new
    @post = Post.new
    @user = current_user
  end
  
  def index
    @post = Post.new
    # @posts = Post.all
    @comment = Comment.new 
    @comments = Comment.all
  end

  def create
   
    @post = current_user.posts.build(post_params)
      if @post.save
      redirect_to posts_path, notice: "Post successful"
    else
      render 'new'
    end
  end

  #should be individual post
  def show
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


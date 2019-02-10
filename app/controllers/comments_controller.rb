class CommentsController < ApplicationController
  def new
  end

  def create
    post = Post.find(params[:original_post])
    @comment = post.comments.build(comment_params)
    @comment.user_id = current_user.id
      if @comment.save
      redirect_to posts_path, notice: "Comment successful"
    else
      redirect_to posts_path, notice: "Comment failed"
    end
  end


private 
  def comment_params
    params.require(:comment).permit(:body)
  end
end
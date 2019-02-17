class CommentsController < ApplicationController

  def create
        #binding.pry
    comment = Comment.create(comment_params)
    #@post.comments << @comment
    redirect_to comment.post
    #redirect_to post_path(comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username])
    #binding.pry
  end
end

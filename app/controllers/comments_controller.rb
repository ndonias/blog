class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :show, :destroy]

def new
	@comment=Comment.new
end

def create
	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(comment_params)
  	@comment.user = user.id
  	if @comment.save
    	redirect_to @post
  	else
    	flash.now[:danger] = "error"
	end
end

  def edit
  end

  def show
  end

  private

  def set_comment
  	@comment=Comment.find(params[:id])
  end

  def comment_params
  	params.require(:comment).permit(:user_id, :post_id, :body)
  end

end

class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_comment, except:[:create]

 def create
 @comment = current_user.comments.build(comment_params)
 redirect_to root_path if @comment.save
 end

  private
 def comment_params
 params.require(:comment).permit(:user_id,:object_type,:object_id,:body)
 end
 def find_comment
  @comment = Comment.find(params[:id])
 end

end

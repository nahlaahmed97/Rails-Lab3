class CommentsController < ApplicationController


def create 
    @Comment = Comment.new
    @Comment.user_id = 1
    @Comment.post_id = params[:post_id]
    @Comment.content = params[:comment]
    @Comment.save 
    redirect_to post_path(params[:post_id])
end 
def destroy
@comment =  Comment.find(params[:id])
@comment.delete
redirect_to post_path(@comment.post_id)
end

end 

class PostsController < ApplicationController
    def index
        @posts=Post.order(updated_at: :desc)

    end

def new
    @post = Post.new
end 

def create 
    # posts_params = params.permit(:title , :content)
    # @post= Post.create(post_params)
    # if @post.id
    #     redirect_to :posts
    # else 
    # render :new
    # end
    @post=User.find(2).posts.create(post_params)
   
    if @post.persisted? 
    redirect_to :posts
    else 
        render :new
    end 
end 
def show
    @post= Post.find(params[:id])
   end
def edit 
    @post= Post.find(params[:id])
end 
def update
    @post=Post.find(params[:id])
    if  @post.update(post_params)
   
    redirect_to action: :index 
    else 
        render :edit
end 
end
def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to :posts
end 
private
def post_params
    params.require(:post).permit(:title, :content)
end 
end

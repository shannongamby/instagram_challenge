class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def new
    if logged_in?
      @post = Post.new
    else
      flash[:danger] = "You must be logged in to post."
      redirect_to '/login'
    end
  end

  def create
    @post = Post.create(post_params.merge({user_id: current_user.id}))
    p @post
    if @post.save
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:danger] = "Your post was deleted."
    redirect_to :root
  end

  def post_params
    params.require(:post).permit(:caption)
  end

end

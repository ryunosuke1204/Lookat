class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    
  end

  def create
    @post = Post.new(post_params)
    binding.pry
    if @post.save
      redirect_to action: :index
    else
      render :new
   end
  end

  private

  def post_params
    params.require(:post).permit(:headwear,:tops,:shoes,:accessories,:bottoms,:outer,:image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
  
end

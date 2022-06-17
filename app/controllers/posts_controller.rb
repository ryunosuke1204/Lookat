class PostsController < ApplicationController
  before_action :authenticate_user!,except: [:index,:show]
  before_action :set_post, only: [:show, :edit,:update,:destroy]
  before_action :move_to_index, except: [:index, :show ,:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show

  end

  def update
    if @post.update(post_params)
      redirect_to action: :show
    else
      render :edit
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to action: :index
    else
      render :new
   end
  end

  def destroy
    if @post.destroy
      redirect_to action: :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:headwear,:tops,:shoes,:accessories,:bottoms,:outer,:image,:name).merge(user_id: current_user.id)
  end

  def move_to_index
    unless current_user.id == @post.user_id 
      redirect_to action: :index
    end
  end

  def set_post
    @post = Post.find(params[:id])
  end
  
end

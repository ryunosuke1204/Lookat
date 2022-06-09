class PostsController < ApplicationController

  def index
    
  end

  def new
    
  end
  private

  def post_params
    params.require(:post).permit(:content,:headwear,:tops,:shoes,:accessories,:bottoms,:outer, :image).merge(user_id: current_user.id)
  end
end

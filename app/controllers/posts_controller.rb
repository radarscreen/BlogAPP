class PostsController < ApplicationController
  def index
  	@posts=Post.all
  end

  def show
    	@post=Post.find params[:id]
    	@author=@post.author
  end

  def new
  end

  def edit
  end
end

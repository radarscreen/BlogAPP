class AuthorsController < ApplicationController
  def index
  	@authors=Author.all
  end

  def show
  	@author=Author.find params[:id]
  	render :show
  end

  def new
  end

  def edit
  end
end

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(params[:category])
    redirect_to category_path(category)
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(params.require(:category).permit
    redirect_to category_path(category)
  end

  private
  def post_params
	  # params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
	  params.require(:post).permit(:title,:description,:post_status,:author_id, :category_id)
end

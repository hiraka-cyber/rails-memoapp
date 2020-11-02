class MemoController < ApplicationController
  before_action :set_post,only:[:edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to new_memo_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path
    else
      redirect_to edit_memo_path(@post.id)
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:content)
  end
end

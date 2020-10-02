class ClonesController < ApplicationController
  def index
    @clone =Clone.all
  end
  def new
    @clone =Clone.new
  end
  def create
    @clone = Clone.new(clone_params)
    if @clone.save
      redirect_to new_clone_path, notice:"投稿しました！"
    else
      render :new
    end
  end
  private
  def clone_params
    params.require(:clone).permit(:name,:content)
  end
end

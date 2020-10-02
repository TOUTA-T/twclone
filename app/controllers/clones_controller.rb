class ClonesController < ApplicationController
    before_action :set_clone, only: [:edit, :update, :destroy]
  def index
    @clones = Clone.all
  end

  def new
    @clone = Clone.new
  end

  def create
    @clone = Clone.new(clone_params)
    if params[:back]
      render :new
    else
      if @clone.save
        redirect_to new_clone_path, notice:"投稿しました！"
      else
        render :new
      end
    end
  end

  def edit
  end

  def confirm
    @clone = Clone.new(clone_params)
    render :new if @clone.invalid?
  end

  def update
    if @clone.update(clone_params)
      redirect_to clones_path, notice:"投稿内容を編集しました"
    else
      render:edit
    end
  end

  def destroy
    @clone.destroy
    redirect_to clones_path, notice:"ツイートを削除しました"
  end

  private

  def clone_params
    params.require(:clone).permit(:content)
  end

  def set_clone
    @clone = Clone.find(params[:id])
  end

end

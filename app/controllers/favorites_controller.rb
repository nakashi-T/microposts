class FavoritesController < ApplicationController
  def create
    # user = User.find(params[:micropost_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to users_path
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:danger] = 'お気に入りから解除しました。'
    redirect_to users_path
  end
end

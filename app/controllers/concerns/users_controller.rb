class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def showmine
    @user = User.find(params[:id])
    @likes = @user.likes
  end

end
  #sr-only    bootstrap class for comment label  class = "sr-only"
  #time_ago_in_words(comment.created_at)


 # @photo.fans.pluck(:username).to_sentence
 #Photo.all.pluck(:caption)

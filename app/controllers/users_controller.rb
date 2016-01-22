class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @current_user ||= User.find_by(id: params[:user_id])
    @user_videos = UsersVideo.where("user_id = ?", params[:user_id])
    @videos = Video.all
    #I know this is not best practices
    @user_video_titles = []
    @user_videos.each do |user_video|
      @user_video_titles.push(@videos.where("id = ?", user_video.user_id).first.title)
    end
  end
end

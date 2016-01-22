class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  def show
    @current_video ||= Video.find_by(id: params[:video_id])
    @viewers = UsersVideo.where("video_id = ?", params[:video_id])
    @users = User.all
    #I know this is not best practices
    @viewer_usernames = []
    @viewers.each do |viewer|
      @viewer_usernames.push(@users.where("id = ?", viewer.user_id).first.name)
    end
  end
end

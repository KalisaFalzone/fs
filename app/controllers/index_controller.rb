class IndexController < ApplicationController

  def actions
    @users = User.all
    @videos = Video.all
  end

end

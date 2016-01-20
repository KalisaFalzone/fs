class User < ActiveRecord::Base
  # How does a user relate to a video?
  # You should be able to run the following:
  #    User.last.videos
  #
  has_many :users_video
  has_many :videos, through: :users_video
  #has_and_belongs_to_many :users
  #^note this would also work, but since the users_video.rb file was provided I'm writing the many-to-many relationship this way

end

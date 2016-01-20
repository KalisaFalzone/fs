class Video < ActiveRecord::Base
  # How does a video relate to a user?
  # You should be able to run the following:
  #    Video.last.users
  #

  has_many :users_video
  has_many :users, through: :users_video
  #has_and_belongs_to_many :users
  #^note this would also work but since the users_video.rb file was provided I'm writing the many-to-many relationship this way

end

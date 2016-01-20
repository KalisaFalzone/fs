class UsersVideo < ActiveRecord::Base
  belongs_to :users
  belongs_to :video
end

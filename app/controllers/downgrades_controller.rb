class DowngradesController < ApplicationController
  def create
    current_user.standard!
    #current_user.wikis.public!
    redirect_to root_path
  end
end

class DowngradesController < ApplicationController
  def create
    current_user.standard!
    current_user.wikis.update_all(:private => false )
    redirect_to root_path
  end
end

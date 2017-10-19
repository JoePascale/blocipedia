class CollaboratorsController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = Collaborator.new(user: @user, wiki: @wiki)

    if @collaborator.save
      flash[:notice] = "You added a new collaborator."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error adding this collaborator."
      redirect_to @wiki
    end
  end

  def destroy
    @collaborator = Collaborator.find(params[:id])

    if @collaborator.destroy
      flash[:notice] = "\"#{@collaborator.id}\" was removed successfully."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error removing that collaborator."
      redirect_to @wiki
    end
  end
end

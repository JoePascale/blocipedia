class CollaboratorsController < ApplicationController
  def index
    @collaborators = Collaborator.all
    if params[:search]
      @collaboratoras = Collaborator.search(params[:search]).order(:name)
    else
      @collaborators = Collaborator.all.order(:name)
    end
  end

  def show
    @collaborator = Collaborator.find(params[:name])
  end

  def new
    @collaborator = Collaborator.new
  end

  def edit
    @collaborator = Collaborator.find(params[:name])
  end
end

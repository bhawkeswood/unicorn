class ProjectsController < ApplicationController
  before_filter :require_login
  
  def index
    @projects = Projects.all
  end

  def show
    @project = Projects.find(params[:id])
  end

  def new
    @project = Projects.new
  end

  def create
    @project = Projects.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def edit
    @project = Projects.find(params[:id])
  end

  def update
    @project = Projects.find(params[:id])
    if @project.update_attributes project_params
      redirect_to project_path
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def project_params
    params.permit(:name, :description, :active, :id)
  end

end

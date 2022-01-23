class ProjectsController < ApplicationController
    
    before_action :set_project, only: [:show, :edit, :destroy, :update]

    def index
        @projects = current_user.projects
    end

    def new
        @project = current_user.projects.new
    end

    def edit   
    end

    def show   
    end

    def create
        @project = current_user.projects.create(project_params)
        flash[:success] = "project have been saved successfully"
        redirect_to projects_path
    end

    def update
        @project.update(project_params)
        flash[:success] = "project have been saved successfully"
        redirect_to projects_path
    end

    def destroy
        @project.delete
        flash[:success] = "project have been deleted successfully"
        redirect_to projects_path
    end

    private

    def project_params
        params.require(:project).permit(:name)
    end

    def set_project
        @project = Project.find(params[:id])
    end
end

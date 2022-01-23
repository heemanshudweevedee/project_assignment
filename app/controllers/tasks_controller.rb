class TasksController < ApplicationController
   
    
        before_action :set_task, only: [:show,:edit, :destroy, :update]
    
        def index
            @project = Project.find(params[:project_id])
            @tasks = @project.tasks
        end
    
        def new
            @project = Project.find(params[:project_id])
            
            @task = @project.tasks.new
        end
    
        def edit   
            @project = @task.project
        end

        def show
        end
    
        def create
            
            @task = Task.create(task_params)
            flash[:success] = "task have been saved successfully"
            redirect_to tasks_path(project_id: @task.project_id)
        end
    
        def update
            @task.update(task_params)
            flash[:success] = "task have been saved successfully"
            redirect_to tasks_path(project_id: @task.project_id)
        end

        def destroy
            @task.delete
            flash[:success] = "task have been deleted successfully"
            redirect_to tasks_path(project_id: @task.project_id)
        end
    
        private
    
        def task_params
            params.require(:task).permit(:description, :project_id)
        end
    
        def set_task
            @task = Task.find(params[:id])
        end
    
end

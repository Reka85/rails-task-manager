class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path # to main page
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task) # ez elkészült file-t mutatja
  end

  def destroy
    @task.destroy
    redirect_to tasks_path # minden task-et mutat
  end

  private

  def task_params
    params.require(:task).permit(:title, :date_of_creation, :done)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :edit, :destroy ]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    task.update(task_params)
    task.save
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end


  private

  def task_params # strong params
    params.require(:task).permit(:title, :description, :done)
  end

  def set_task
    @task = Task.find(params[:id])
  end


end

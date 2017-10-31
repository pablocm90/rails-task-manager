class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task.update(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def destroy
  end


  private


end

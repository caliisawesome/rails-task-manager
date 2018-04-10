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
    @task.save
  end

  def edit
  end

  def update
    @task = Task.save
  end

  def destroy
   @task.destroy
  end

  private

  def set_task
     @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end

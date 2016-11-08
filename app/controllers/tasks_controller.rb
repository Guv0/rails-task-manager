class TasksController < ApplicationController
  before_action :set_task, only:[:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show

  end

  def new

  end

  def create
    @task = Task.create(params[:task])
    redirect_to tasks_path
  end

  def edit

  end

  def update
    @task.update(params[:task])
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end
end

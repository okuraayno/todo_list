class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to user_tasks_path, notice: "You have created book successfully."
    else
      render 'new'
    end
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.user_id = current_user.id
    if @task.update(task_params)
      redirect_to user_tasks_path, notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :title, :detail, :scheduled_date, :limit_date, :priority)
  end

end

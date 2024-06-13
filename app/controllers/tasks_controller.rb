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
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :title, :detail, :scheduled_date, :limit_date, :priority)
  end

end

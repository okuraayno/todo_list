class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      pp @tas
      redirect_to user_task_path(@task), notice: "You have created book successfully."
    else
      render 'new'
    end
  end

  def index
    @user = User.find(params[:id])
    @tasks = @user.tasks
  end

  def show
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail, :scheduled_date, :limit_date, :priority)
  end


end

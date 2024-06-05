class TasksController < ApplicationController

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to _path(@task), notice: "You have created book successfully."
    else
      render 'new'
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  private

  def task_params
    params.require(:task).permit(:task_title, :task, :task_at)
  end
  
  
end

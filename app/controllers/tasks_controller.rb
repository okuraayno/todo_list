class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to user_tasks_path, notice: "タスクを追加しました。"
    else
      flash[:notice] = "内容を確認してください。"
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
      redirect_to user_tasks_path, notice: "タスク内容を修正しました。"
    else
      flash[:notice] = "内容を確認してください。"
      render "edit"
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "タスクを削除しました。"
    redirect_to user_tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:user_id, :title, :detail, :scheduled_date, :limit_date, :priority)
  end

end

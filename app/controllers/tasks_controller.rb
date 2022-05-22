class TasksController < ApplicationController

  protect_from_forgery with: :null_session

  def new
  end

  def show
    @tasks = Task.all
    #redirect_to action:'show'
    render :json => @tasks
  end

  def delete_tasks
    @tasks = Task.all
    @tasks.destroy_all
    @tasks = Task.all
    render :json => @tasks
  end

  def add_task
    @task = Task.new({subject: params[:subject], info: params[:info], image: params[:image]})
    @task.save
    @tasks = Task.all
    render :json => @tasks
  end

  def delete_task
    @task = Task.find_by(id: params[:id])
    @task.destroy
    @tasks = Task.all
    render :json => @tasks
  end

end

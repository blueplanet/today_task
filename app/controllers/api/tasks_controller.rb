module Api
  class TasksController < ApplicationController
    before_action :set_task, only: %i(update destroy)

    def index
      @tasks = Task.all
    end

    def create
      task = Task.create! task_params
      render json: task, status: 201
    end

    def update
      @task.update! task_params

      render nothing: true, status: 204
    end

    def destroy
      @task.destroy!

      render nothing: true, status: 204
    end

    private

    def set_task
      @task = Task.find params[:id]
    end

    def task_params
      params.require(:task).permit(:name, :completed)
    end
  end
end

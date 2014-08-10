class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    render json: @todo.task.to_json
  end

  private
  def todo_params
    params.require(:todo).permit(:task)
  end
end
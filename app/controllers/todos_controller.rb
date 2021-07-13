# frozen_string_literal: true

# Controller for managing todos
class TodosController < ApplicationController
  before_action :set_project
  before_action :set_todo, only: %i[show update destroy]

  def index
    @todos = @project.todos
    json_response(@todos)
  end

  def create
    @todo = @project.todos.create!(todo_params)
    json_response(@todo, :created)
  end

  def show
    json_response(@todo)
  end

  def update
    @todo.update(todo_params)
    head :no_content
  end

  def destroy
    @todo.destroy
    head :no_content
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def todo_params
    params.permit(:name, :completion_status)
  end

  def set_todo
    @todo = @project.todos.find(params[:id])
  end
end

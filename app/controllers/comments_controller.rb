# frozen_string_literal: true

# Controller for managing comments
class CommentsController < ApplicationController
  before_action :set_todo
  before_action :set_todo_comment, only: %i[show update destroy]

  def index
    json_response(@todo.comments)
  end

  def show
    json_response(@comment)
  end

  def create
    @todo.comments.create!(comment_params)
    json_response(@todo, :created)
  end

  def update
    @comment.update(comment_params)
    head :no_content
  end

  def destroy
    @comment.destroy
    head :no_content
  end

  private

  def comment_params
    params.permit(:body)
  end

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end

  def set_todo_comment
    @comment = @todo.comments.find_by!(id: params[:id]) if @todo
  end
end

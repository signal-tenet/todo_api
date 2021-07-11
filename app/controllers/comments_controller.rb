class CommentsController < ApplicationController
  before_action :set_todo
  before_action :set_todo_comment, only: [:show, :update, :destroy]

  # GET /todos/:todo_id/comments
  def index
    json_response(@todo.comments)
  end

  # GET /todos/:todo_id/comments/:id
  def show
    json_response(@comment)
  end

  # POST /todos/:todo_id/comments
  def create
    @todo.comments.create!(comment_params)
    json_response(@todo, :created)
  end

  # PUT /todos/:todo_id/comments/:id
  def update
    @comment.update(comment_params)
    head :no_content
  end

  # DELETE /todos/:todo_id/comments/:id
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

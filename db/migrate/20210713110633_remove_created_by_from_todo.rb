class RemoveCreatedByFromTodo < ActiveRecord::Migration[6.1]
  def change
    remove_column :todos, :created_by, :string
  end
end

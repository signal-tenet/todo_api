class AddTodosAssociationToProject < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :project_id, :integer
    add_index 'todos', ['project_id'], :name => 'index_project_id'
  end
end

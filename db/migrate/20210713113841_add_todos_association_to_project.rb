class AddTodosAssociationToProject < ActiveRecord::Migration[6.1]
  def self.up
    add_column :todos, :project_id, :integer
    add_index 'todos', ['project_id'], :name => 'index_project_id'
  end

  def self.down
    remove_column :todos, :project_id
  end
end

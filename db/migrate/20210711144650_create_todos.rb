# frozen_string_literal: true

class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :created_by
      t.boolean :completion_status

      t.timestamps
    end
  end
end

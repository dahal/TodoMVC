class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.boolean :status, default: false

      t.timestamps
    end
  end
end

class AddColumnTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :task_title, :text
    add_column :tasks, :task_at, :datetime
  end
end

class ChangeListsToTasks < ActiveRecord::Migration[6.1]
  def change
    rename_table :lists, :tasks
  end
end

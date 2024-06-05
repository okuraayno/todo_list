class AddColumnsToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :user_id, :integer
    add_column :tasks, :title, :string, null: false
    add_column :tasks, :detail, :text
    add_column :tasks, :scheduled_date, :datetime
    add_column :tasks, :limit_date, :datetime
    add_column :tasks, :priority, :integer, default: 0, limit: 3
    add_column :tasks, :status, :boolean, default: true, null: false

  end
end
class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :title, null: false
      t.text :detail
      t.datetime :scheduled_date
      t.datetime :limit_date
      t.integer :priority, default: 0, limit: 3
      t.boolian :status, default: true, null: false

      t.timestamps
    end
  end
end

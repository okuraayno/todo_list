class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.text :state
      t.text :detail
      t.datetime :limit_date

      t.timestamps
    end
  end
end

class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
      t.tsrange :range
      t.text :description
      t.string :kind
      t.boolean :half_day
      t.boolean :paid_time
      t.string :calendar
      t.integer :worker_id

      t.timestamps
    end
  end
end

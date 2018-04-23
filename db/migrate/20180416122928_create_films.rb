class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.integer :user_id, null: false
      t.string :category, null: false, default: ''
      t.string :name, null: false, default: ''
      t.date :watch_date
      t.binary :label, limit: 2.megabyte
      t.string :director
      t.text :comment
      t.integer :point
      t.string :reference

      t.timestamps
    end
  end
end

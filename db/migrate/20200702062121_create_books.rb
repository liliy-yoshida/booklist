class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.string :title
      t.string :author
      t.string :publisher
      t.text :comment

      t.timestamps
    end
  end
end

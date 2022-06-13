class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :title
      t.string :comment
      t.string :tag
      t.integer :user_id

      t.timestamps
    end
  end
end

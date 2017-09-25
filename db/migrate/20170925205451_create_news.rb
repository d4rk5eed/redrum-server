class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|
      t.string :title
      t.text :announcement
      t.text :body

      t.timestamps
    end
  end
end

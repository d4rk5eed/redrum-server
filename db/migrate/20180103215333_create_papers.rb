class CreatePapers < ActiveRecord::Migration[5.1]
  def change
    create_table :papers do |t|
      t.string :title
      t.text :announcement
      t.text :content
      t.string :author

      t.string :format
      t.string :volume
      t.string :paper_type
      t.text :genre
      t.string :cover
      t.string :publisher
      t.string :printing
      t.string :circulation
      t.float :price
      t.text :additional
      t.string :image

      t.timestamps
    end
  end
end

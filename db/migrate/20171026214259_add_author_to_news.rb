class AddAuthorToNews < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :author, :string
  end
end

class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.text :address
      t.text :description

      t.timestamps
    end
  end
end

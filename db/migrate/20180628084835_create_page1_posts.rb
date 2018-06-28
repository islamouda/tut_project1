class CreatePage1Posts < ActiveRecord::Migration[5.2]
  def change
    create_table :page1_posts do |t|
      t.string :title
      t.text :body
      t.text :description
      t.string :image
      t.string :slug

      t.timestamps
    end
    add_index :page1_posts, :slug, unique: true
  end
end

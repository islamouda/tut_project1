class AddAttachmentImageToPage1Posts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :page1_posts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :page1_posts, :image
  end
end

class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :post_title
      t.string :post_file
      t.date :date_of_publication
      t.string :post_header
      t.string :post_author
      t.string :post_comment
      t.integer :user_id
      t.timestamps
    end
  end
end

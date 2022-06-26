class AddPostsIdToComments < ActiveRecord::Migration[5.2]
  def up
    execute "DELETE FROM comments;"
    add_reference :comments, :post, null: false, index: true, foreign_key: true
  end

  def down
    remove_reference :comments, :post, index: true, foreign_key: true
  end
end

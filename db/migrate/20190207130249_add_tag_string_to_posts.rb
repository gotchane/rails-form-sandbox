class AddTagStringToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :tag_string, :text
  end
end

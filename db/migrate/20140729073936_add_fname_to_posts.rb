class AddFnameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :fname, :string
  end
end

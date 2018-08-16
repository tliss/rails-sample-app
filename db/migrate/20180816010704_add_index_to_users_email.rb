class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    # on the users table, add an index on the email column and the index should enforce uniqueness
    add_index :users, :email, unique: true
  end
end

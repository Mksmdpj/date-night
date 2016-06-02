class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything in this method is translated to sql code and modified the database // any changes made in the def change method, we can roll backwards or forwards. you can undo changes
    add_column :users, :username, :string #add new colimn to table "users", called "username" and of type "string"
    add_index :users, :username, unique: true #first, index usernames for quick (rapid) lookup, second, ensure usernames are always unique
  end
end

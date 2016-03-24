class CreateUsersessions < ActiveRecord::Migration
  def change
    create_table :usersessions do |t|
      t.string :sign_in
      t.string :create
      t.string :sign_up

      t.timestamps null: false
    end
  end
end

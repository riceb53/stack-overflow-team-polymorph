class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :password , null: false#password_hash

      t.timestamps null: false
    end
  end
end

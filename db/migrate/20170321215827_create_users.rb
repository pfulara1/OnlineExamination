class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uname
      t.string :password

      t.timestamps null: false
    end
  end
end

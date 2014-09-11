class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.boolean :admin
      t.string :cohort
      t.string :email
      t.boolean :graduate

      t.timestamps
    end
  end
end

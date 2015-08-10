class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.index :name
      t.index :line1
      t.index :line2
      t.index :city
      t.index :state
      t.index :zip
      t.index :phone
      t.timestamps null: false
    end
  end
end

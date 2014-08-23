class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :name
      t.string :email
      t.integer :years
   	  t.boolean :active, :default => true
      t.timestamps
    end
  end
end

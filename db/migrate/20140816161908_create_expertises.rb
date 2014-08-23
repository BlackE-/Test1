class CreateExpertises < ActiveRecord::Migration
  def change
    create_table :expertises do |t|
      t.integer :profession_id
      t.integer :user_id
      t.integer :price, :default =>0
      t.timestamps
    end
    add_index :expertises,[:user_id, :profession_id],unique: true
  end
end

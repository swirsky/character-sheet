class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :character_name
      t.integer :user_id
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps null: false
    end

    add_index :characters, :user_id
  end
end

class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :name, null:false
      t.integer :class_level, null:false, default:1
      t.integer :hitdice, null:false, default:10
      t.decimal :bab, null:false, default:1
      t.boolean :fortitude, null:false, default:false
      t.boolean :reflex, null:false, default:false
      t.boolean :will, null:false, default:false

      t.timestamps null: false
    end

    add_index :character_classes, :name
  end
end

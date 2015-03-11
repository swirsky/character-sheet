class AddDefaultValues < ActiveRecord::Migration
  def change
    change_table :characters do |t|
     t.change :user_id, :integer, null:false
     t.change :strength, :integer, null:false
     t.change :dexterity, :integer, null:false
     t.change :constitution, :integer, null:false
     t.change :intelligence, :integer, null:false
     t.change :wisdom, :integer, null:false
     t.change :charisma, :integer, null:false
    end
  end
end

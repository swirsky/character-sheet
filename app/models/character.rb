class Character < ActiveRecord::Base
  validates_presence_of :user_id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
end

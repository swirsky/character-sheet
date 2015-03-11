json.array!(@characters) do |character|
  json.extract! character, :id, :character_name, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
  json.url character_url(character, format: :json)
end

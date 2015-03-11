require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
      :character_name => "MyString",
      :strength => 1,
      :dexterity => 1,
      :constitution => 1,
      :intelligence => 1,
      :wisdom => 1,
      :charisma => 1
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input#character_character_name[name=?]", "character[character_name]"

      assert_select "input#character_strength[name=?]", "character[strength]"

      assert_select "input#character_dexterity[name=?]", "character[dexterity]"

      assert_select "input#character_constitution[name=?]", "character[constitution]"

      assert_select "input#character_intelligence[name=?]", "character[intelligence]"

      assert_select "input#character_wisdom[name=?]", "character[wisdom]"

      assert_select "input#character_charisma[name=?]", "character[charisma]"
    end
  end
end

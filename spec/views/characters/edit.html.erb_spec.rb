require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :character_name => "MyString",
      :strength => 1,
      :dexterity => 1,
      :constitution => 1,
      :intelligence => 1,
      :wisdom => 1,
      :charisma => 1
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

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

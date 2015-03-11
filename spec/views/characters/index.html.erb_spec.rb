require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :character_name => "Character Name",
        :strength => 1,
        :dexterity => 2,
        :constitution => 3,
        :intelligence => 4,
        :wisdom => 5,
        :charisma => 6
      ),
      Character.create!(
        :character_name => "Character Name",
        :strength => 1,
        :dexterity => 2,
        :constitution => 3,
        :intelligence => 4,
        :wisdom => 5,
        :charisma => 6
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Character Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end

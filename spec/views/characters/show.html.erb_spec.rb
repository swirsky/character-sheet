require 'rails_helper'

RSpec.describe "characters/show", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :character_name => "Character Name",
      :strength => 1,
      :dexterity => 2,
      :constitution => 3,
      :intelligence => 4,
      :wisdom => 5,
      :charisma => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Character Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end

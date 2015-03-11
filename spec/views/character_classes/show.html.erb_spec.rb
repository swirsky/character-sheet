require 'rails_helper'

RSpec.describe "character_classes/show", type: :view do
  before(:each) do
    @character_class = assign(:character_class, CharacterClass.create!(
      :name => "Name",
      :class_level => 1,
      :hitdice => 2,
      :bab => "9.99",
      :fortitude => false,
      :reflex => false,
      :will => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end

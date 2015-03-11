require 'rails_helper'

RSpec.describe "character_classes/index", type: :view do
  before(:each) do
    assign(:character_classes, [
      CharacterClass.create!(
        :name => "Name",
        :class_level => 1,
        :hitdice => 2,
        :bab => "9.99",
        :fortitude => false,
        :reflex => false,
        :will => false
      ),
      CharacterClass.create!(
        :name => "Name",
        :class_level => 1,
        :hitdice => 2,
        :bab => "9.99",
        :fortitude => false,
        :reflex => false,
        :will => false
      )
    ])
  end

  it "renders a list of character_classes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

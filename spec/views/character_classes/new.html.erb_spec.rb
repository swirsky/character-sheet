require 'rails_helper'

RSpec.describe "character_classes/new", type: :view do
  before(:each) do
    assign(:character_class, CharacterClass.new(
      :name => "MyString",
      :class_level => 1,
      :hitdice => 1,
      :bab => "9.99",
      :fortitude => false,
      :reflex => false,
      :will => false
    ))
  end

  it "renders new character_class form" do
    render

    assert_select "form[action=?][method=?]", character_classes_path, "post" do

      assert_select "input#character_class_name[name=?]", "character_class[name]"

      assert_select "input#character_class_class_level[name=?]", "character_class[class_level]"

      assert_select "input#character_class_hitdice[name=?]", "character_class[hitdice]"

      assert_select "input#character_class_bab[name=?]", "character_class[bab]"

      assert_select "input#character_class_fortitude[name=?]", "character_class[fortitude]"

      assert_select "input#character_class_reflex[name=?]", "character_class[reflex]"

      assert_select "input#character_class_will[name=?]", "character_class[will]"
    end
  end
end

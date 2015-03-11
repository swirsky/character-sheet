require 'rails_helper'

RSpec.describe "CharacterClasses", type: :request do
  describe "GET /character_classes" do
    it "works! (now write some real specs)" do
      get character_classes_path
      expect(response).to have_http_status(200)
    end
  end
end

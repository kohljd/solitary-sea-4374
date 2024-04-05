require "rails_helper"

RSpec.describe CharacterService do
  describe ".get_character_for(affiliation)" do
    it "returns a characters affiliated with selected nation" do
      json_response = File.read("spec/fixtures/affiliation_members_list.json")
      
      stub_request(:get, "https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire+Nation")
        .to_return(status: 200, body: json_response)

      characters = CharacterService.get_characters_for("Fire+Nation")

      expect(characters).to be_an(Array)
      expect(characters).to all(be_a(Hash))
    end
  end
end
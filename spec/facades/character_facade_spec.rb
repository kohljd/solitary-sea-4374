require "rails_helper"

RSpec.describe CharacterFacade do
  describe ".characters_of(affiliation)" do
    it "returns characters affiliated with given nation" do
      json_response = File.read("spec/fixtures/affiliation_members_list.json")
      
      stub_request(:get, "https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire+Nation")
        .to_return(status: 200, body: json_response)

      characters = CharacterFacade.characters_of("Fire+Nation")
      
      expect(characters).to all(be_a(Character))
    end
  end
end
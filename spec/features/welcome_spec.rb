require "rails_helper"

RSpec.describe "Welcome Page", type: :feature do
  describe "As a user" do

    before do
      visit root_path
    end

    it "has form with options to select a nation" do
      expect(page).to have_content("Fire Nation")
      expect(page).to have_content("Air Nomads")
      expect(page).to have_content("Water Tribe")
      expect(page).to have_content("Earch Kingdom")
      expect(page).to have_button("Search For Members")
    end

    it "submitting form redirects to the nation's search page" do
      check "Fire Nation"
      click_on "Search For Members"
      expect(current_path).to eq("/search")
      expect(page).to have_content("Fire Nation Members")
    end
  end
end
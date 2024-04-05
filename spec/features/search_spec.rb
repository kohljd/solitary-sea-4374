require "rails_helper"

RSpec.describe "Search Page", type: :feature do
  describe "As a user" do

    before do
      visit search_path
    end

    it "displays Nation's name" do
      expect(page).to have_content("Fire Nation Members")
    end

    it "displays total number of people living in the nation" do
      expect(page).to have_content(5)
    end

    describe "displays nation's members" do
      it "lists first 25 members of nation" do
        expect(page).to have_css(".member", maximum: 25)
      end
      
      describe "included member info" do
        it "member name"do
          expect(page).to have_content("Name", maximum: 25)
        end

       it "member's allies" do
        expect(page).to have_content("Allies:", maximum: 25)
       end

       it "member's enemies" do
        expect(page).to have_content("Enemies:", maximum: 25)
       end

       it "member's affiliations" do
        expect(page).to have_content("Affiliations:", maximum: 25)
       end

       xit "displays member photo if provided" do

       end
      end
    end
  end
end
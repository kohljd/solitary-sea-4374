class SearchController < ApplicationController
  def index
    @affiliation = params[:affiliation]
    @members = CharacterFacade.characters_of(@affiliation)
  end
end
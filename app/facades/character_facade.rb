class CharacterFacade
  def self.characters_of(affiliation)
    json = CharacterService.get_characters_for(affiliation)
    json.map do |character_data|
      Character.new(character_data)
    end
  end
end
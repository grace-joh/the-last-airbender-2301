require 'rails_helper'

RSpec.describe AvatarService do
  before(:each) do
    @service = AvatarService.new
  end

  describe 'search_by_nation' do
    it 'returns an array of members of a nation' do
      nation = 'fire+nation'
      members = @service.search_by_nation(nation)

      expect(members).to be_an(Array)
      expect(members.count).to eq(97)
      expect(members).to all(be_a(Hash))

      members.each do |member|
        expect(member).to have_key(:allies)
        expect(member[:allies]).to be_an(Array)
        expect(member[:allies]).to all(be_a(String))
        expect(member).to have_key(:enemies)
        expect(member[:enemies]).to be_an(Array)
        expect(member[:enemies]).to all(be_a(String))
        # expect(member).to have_key(:photoUrl)
        expect(member[:photoUrl]).to be_a(String).or be_nil
        expect(member).to have_key(:name)
        expect(member[:name]).to be_a(String)
        expect(member).to have_key(:affiliation)
        expect(member[:affiliation]).to be_a(String)
      end
    end
  end
end

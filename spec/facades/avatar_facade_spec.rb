require 'rails_helper'

RSpec.describe AvatarFacade do
  describe 'members_by_nation' do
    before(:each) do
      @facade = AvatarFacade.new
    end

    it 'returns an array of members of a nation' do
      nation = 'fire+nation'
      members = @facade.members_by_nation(nation)

      expect(members).to be_an(Array)
      expect(members.count).to eq(97)
      expect(members).to all(be_a(Member))

      members.each do |member|
        expect(member.name).to be_a(String)
        expect(member.allies).to be_a(String)
        expect(member.enemies).to be_a(String)
        expect(member.photo_url).to be_a(String).or be_nil
        expect(member.affiliation).to be_a(String)
      end
    end
  end
end

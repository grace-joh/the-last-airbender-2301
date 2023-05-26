require 'rails_helper'

RSpec.describe Member do
  it 'initializes with attributes' do
    data = { _id: '5cf5679a915ecad153ab68cc',
             allies: ['Fire Nation'],
             enemies: ['Aang'],
             photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128',
             name: 'Afiko',
             affiliation: 'Fire Nation' }
    member = Member.new(data)

    expect(member).to be_a Member
    expect(member.name).to eq('Afiko')
    expect(member.photo_url).to eq('https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128')
    expect(member.allies).to eq('Fire Nation')
    expect(member.enemies).to eq('Aang')
    expect(member.affiliation).to eq('Fire Nation')
  end

  it 'can initialize another member' do
    data = { _id: '5cf5679a915ecad153ab68da',
             allies: ['Ozai', 'Zuko '],
             enemies: ['Iroh', 'Zuko', 'Kuei', 'Long Feng', 'Mai', 'Ty Lee', 'Ursa '],
             photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941',
             name: 'Azula',
             affiliation: "Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)" }
    member = Member.new(data)

    expect(member).to be_a Member
    expect(member.name).to eq('Azula')
    expect(member.photo_url).to eq('https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941')
    expect(member.allies).to eq('Ozai, Zuko ')
    expect(member.enemies).to eq('Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa ')
    expect(member.affiliation).to eq("Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end

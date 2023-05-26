require 'rails_helper'

RSpec.describe 'Search Index', type: :feature do
  before(:each) do
    visit '/search?nation=fire+nation'
  end

  it 'displays the header' do
    within('header') do
      expect(page).to have_content('Members')
    end
  end

  it 'displays the total number of people who live in the Fire Nation' do
    within('.total-results') do
      expect(page).to have_content('Total: 97')
    end
  end

  it 'displays a list with the first 25 members of the Fire Nation and their details' do
    within('.members-list') do
      expect(page).to have_content('Afiko')
      expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
      expect(page).to have_content('Allies: Fire Nation')
      expect(page).to have_content('Enemies: Aang')
      expect(page).to have_content('Affiliation: Fire Nation')
    end
  end
end

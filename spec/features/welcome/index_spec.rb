require 'rails_helper'

RSpec.describe 'Search Index', type: :feature do
  it 'can search for members' do
    visit '/'

    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq('/search')
    expect(page).to have_content('Fire Nation Members')
  end
end

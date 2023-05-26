require 'rails_helper'

RSpec.describe 'Search Index', type: :feature do
  before(:each) do
    visit '/search'
  end

  it 'displays the nation title' do
    expect(page).to have_content('Fire Nation Members')
  end
end

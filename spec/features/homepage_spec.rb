require 'rails_helper'

describe 'Visiting the homepage' do
  it 'has a welcome message' do
    visit '/'
    expect(page).to have_content('Welcome to Suffolk Developers')
  end
end

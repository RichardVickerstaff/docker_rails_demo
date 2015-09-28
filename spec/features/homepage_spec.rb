require 'rails_helper'

describe 'Visiting the homepage' do
  it 'has a welcome message' do
    visit '/'
    expect(page).to have_content('Welcome to Suffolk Developers')
  end

  it 'shows a message stored in the database' do
    message = create :message
    visit '/'
    expect(page).to have_content(message.text)
  end
end

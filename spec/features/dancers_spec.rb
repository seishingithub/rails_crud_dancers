require 'spec_helper'

feature 'Manage Dancers' do
  scenario 'User can create and view list of dancers' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a Dancer'
    fill_in 'Name', with: 'Mikhail Baryshnikov'
    fill_in 'Genre', with: 'ballet'
    click_on 'Create Dancer'
    expect(page).to have_content 'Mikhail Baryshnikov'
    expect(page).to have_content 'ballet'

  end
end
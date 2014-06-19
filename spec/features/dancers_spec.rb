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

  scenario 'User can edit and update list of dancers' do
    visit '/'
    click_on 'Add a Dancer'
    fill_in 'Name', with: 'Mikhail Baryshnikov'
    fill_in 'Genre', with: 'ballet'
    click_on 'Create Dancer'
    expect(page).to have_content 'Mikhail Baryshnikov'
    expect(page).to have_content 'ballet'
    click_on 'Mikhail'
    expect(page).to have_content 'Mikhail Baryshnikov'
    expect(page).to have_content 'ballet'
    click_on 'Edit dancer'
    fill_in 'Name', with: 'Michael Jackson'
    fill_in 'Genre', with: 'pop'
    click_on 'Update dancer'
    expect(page).to have_no_content 'Mikhail Baryshnikov'
    expect(page).to have_no_content 'ballet'
    expect(page).to have_content 'Michael Jackson'
    expect(page).to have_content 'pop'
  end
end
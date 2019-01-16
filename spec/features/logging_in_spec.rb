require 'web_helpers'

RSpec.feature 'Logging in', type: :feature do
  scenario 'Can log in' do
    signup
    visit('/login')
    fill_in('Email', with: 'maker@makers.com')
    fill_in('Password', with: 'password')
    click_button('Log in')
    expect(page).to have_content('Hello, Shannon!')
    expect(page).to_not have_content('Log in')
  end

  scenario 'Can log out' do
    signup
    click_link('Log out')
    expect(page).to have_content('Log in')
    expect(page).to_not have_content('Log out')
  end

  scenario 'Cannot sign in with invalid email/password' do
    visit('/login')
    fill_in('Email', with: 'not an email')
    fill_in('Password', with: 'not a password')
    click_button('Log in')
    expect(page).to have_content('Invalid email/password combination.')
  end
end
